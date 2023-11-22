// import 'package:flutter/material.dart';
//
// class YourScreen extends StatefulWidget {
//   @override
//   _YourScreenState createState() => _YourScreenState();
// }
//
// class _YourScreenState extends State<YourScreen> {
//   bool _showPopup = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             setState(() {
//               _showPopup = !_showPopup;
//             });
//
//             if (_showPopup) {
//               // Close the popup after 3 seconds
//               Future.delayed(Duration(seconds: 3), () {
//                 setState(() {
//                   _showPopup = false;
//                 });
//               });
//             }
//           },
//           child: Text(_showPopup ? 'Hide Popup' : 'Show Popup'),
//         ),
//       ),
//       // Show the custom overlay based on the state
//       floatingActionButton: _showPopup
//           ? CustomOverlay(
//         message: 'Thanks for RSVP.',
//       )
//           : null,
//     );
//   }
// }
//
// class CustomOverlay extends StatelessWidget {
//   final String message;
//
//   const CustomOverlay({Key? key, required this.message}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Center(
//         child: Container(
//           padding: EdgeInsets.all(16.0),
//           color: Colors.white,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(message),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: () {
//                   // Close the overlay when the button is pressed
//                   Navigator.pop(context);
//                 },
//                 child: Text('Close'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
