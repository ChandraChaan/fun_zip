import 'package:flutter/material.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

class QrSuccessfulScreen extends StatelessWidget {
  const QrSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Image.asset('assets/svg/group_53.png'),
              ),
            ),
            20.height,
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.green.shade100,
              child: Center(
                  child: Text(
                'Thanks for check-in.',
                style: TextStyle(color: Colors.green),
              )),
            ),
            10.height,
            // Center(
            //   child: Text(
            //       'It is a long established fact that a reader will be distracted by the readable content.'),
            // ),
            10.height,
            Container(
              height: 35,
              child: TextButton(
                onPressed: () {
                  Get.back();
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0XFFC61236), // Background color
                  primary: Colors.black, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    // Border color
                  ),
                ),
                child: Text('Stop Scanning',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            10.height,
            Container(
              height: 35,
              child: TextButton(
                onPressed: () {
                  Get.back();
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0XFFC61236), // Background color
                  primary: Colors.black, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    // Border color
                  ),
                ),
                child: Text('Close and scan another',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
