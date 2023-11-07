// import 'package:flutter/material.dart';
// import 'package:fun_zippy/app/widgets/commonScafold.dart';
// import 'package:get/get.dart';
//
// import '../qr_code/scanner.dart';
//
// class SuccessFullScreen extends StatefulWidget {
//   const SuccessFullScreen({super.key});
//
//   @override
//   State<SuccessFullScreen> createState() => _SuccessFullScreenState();
// }
//
// class _SuccessFullScreenState extends State<SuccessFullScreen> {
//   @override
//   void initState() {
//     Future.delayed(Duration(seconds: 3), () {
//       // Get.to(CommonScafold(child: MyEvents()));
//       Get.to(QRCodeScannerScreen());
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 100,
//                 width: 100,
//                 child: Image.asset('assets/svg/success.png'),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Text(
//                 'Successful',
//                 style: TextStyle(fontSize: 16),
//               ),
//               Text(
//                 'Your have created a group\nsuccessfully',
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Container(
//                 height: 35,
//                 width: 90,
//                 decoration: BoxDecoration(
//                     color: Color(0XFFC61236),
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Center(
//                   child: Text(
//                     'Done!',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
