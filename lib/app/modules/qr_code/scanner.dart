import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/my_goups/Success.dart';
import 'package:fun_zippy/app/modules/qr_code/qr_error.dart';
import 'package:fun_zippy/app/modules/qr_code/qr_successful.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../sathya/my_events_screen/my_events.dart';
import '../../data/model/UserModel.dart';
import '../../routes/app_pages.dart';

class QRCodeScannerScreen extends StatefulWidget {
  const QRCodeScannerScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRCodeScannerScreenState();
}

class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.toNamed(Routes.EventManagementScreen);
          },
          child: Image.asset('assets/svg/bars_2.png'),
        ),
        title: Center(
          child: Text(
            'Start Check In',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 12, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  if (result != null)
                    Text(
                      'Data: ${result!.code}',
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 250.0
        : 250.0;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Color(0XFFC61236),
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea,
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    print('QR scaning bro');
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        print('QR data asign bro');
        result = scanData;
      });
      checkValidityAndExpiration(scanData.code.toString());
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No camera permission')),
      );
    }
  }

  Future<void> checkValidityAndExpiration(String qrCodeData) async {
    print('QR validity checking bro');
    final isValid = await isQRCodeValid(qrCodeData);

    if (isValid) {
      print('QR is valid bro');
      showDialog(
        context: context,
        builder: (context) {
          return QrSuccessfulScreen();
        },
      );

      // await makeAPICall(qrCodeData);
    } else {
      print('QR not bro');
      showDialog(
        context: context,
        builder: (context) {
          return QrErrorScreen();
        },
      );
    }
  }

  Future<bool> isQRCodeValid(String qrCodeData) async {
    print('QR valid checking bro');
    final getStorage = GetStorage();
    dynamic userMap = getStorage.read('user');
    if (userMap != null) {
      userModel = UserModel.fromJson(userMap);
    }
    if (qrCodeData.isNotEmpty) {
      print('QR is not bro');
      final apiUrl = '${result?.code}';
      final headers = {
        'Cookie': 'AuthToken=${userModel.token};',
      };
      final response = await http.post(Uri.parse(apiUrl), headers: headers);
      print('QR the API results bro ${response.body}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('QR we hit API bro');
        return true;
      }
    }
    return false;
  }

  // Future<void> makeAPICall(String qrCodeData) async {
  //   final apiUrl = 'https://your-api-endpoint.com/your-api';
  //   final headers = {
  //     'Cookie': 'AuthToken=${userModel.token};',
  //   };
  //   final response = await http.post(Uri.parse(apiUrl), body: {
  //     'qr_code_data': qrCodeData,
  //   });
  //   if (response.statusCode == 200) {
  //     //return true;
  //   }
  // }
}
