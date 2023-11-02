// import 'package:flutter/material.dart';
// import 'package:fun_zippy/app/theme/colors.dart';
// import 'package:fun_zippy/sathya/common_data/common_text.dart';
// import 'package:get/get.dart';
//
// class EventScreen extends StatefulWidget {
//   const EventScreen({super.key});
//
//   @override
//   State<EventScreen> createState() => _EventScreenState();
// }
//
// class _EventScreenState extends State<EventScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       appBar: AppBar(
//         elevation: 5,
//         backgroundColor: Colors.white,
//         leading: InkWell(
//           onTap: () {
//             Get.back();
//           },
//           child: Icon(
//             Icons.arrow_back,
//             color: Colors.black,
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CircleAvatar(
//               radius: 20,
//               backgroundColor: Colors.white,
//               child: Icon(
//                 Icons.qr_code,
//                 color: Colors.deepPurple,
//               ),
//             ),
//           )
//         ],
//         title: Center(
//           child: Text(
//             'Event',
//             style: TextStyle(color: Colors.black, fontSize: 20),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Container(
//           height: 392,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Basic Details',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 _buildDetailRow('Event Name', 'The Great Gatsby Party : Hyderabad'),
//                 _buildDetailRow('Start date & time', 'Dec 9, 2023 06:00 PM'),
//                 _buildDetailRow('End Date & time', 'Dec 9, 2023'),
//                 Text10('Event Locality'),
//                 _buildLocalityRow(),
//                 _buildDetailRow('Event location', 'Taj Banjara, Hyderabad'),
//                 _buildDetailRow('Address', 'Rd Number1'),
//                 _buildDetailRow('City', 'Hyderabad'),
//                 _buildDetailRow('State', 'TS'),
//                 _buildDetailRow('Zip', '500034'),
//                 _buildDetailRow('Country', 'India'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDetailRow(String label, String value) {
//     return Row(
//       children: [
//         Text10(label),
//         Text10(': $value'),
//       ],
//     );
//   }
//
//   Widget _buildLocalityRow() {
//     return Row(
//       children: [
//         _buildLocalityContainer('In Person'),
//         SizedBox(width: 5),
//         _buildLocalityContainer('Online'),
//         SizedBox(width: 5),
//         _buildLocalityContainer('Mixed'),
//       ],
//     );
//   }
//
//   Widget _buildLocalityContainer(String text) {
//     return Expanded(
//       child: Container(
//         height: 35,
//         decoration: BoxDecoration(
//           color: Color(0XFFE3DFFF),
//           border: Border.all(color: Color(0XFF5B46F4)),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(fontSize: 10),
//           ),
//         ),
//       ),
//     );
//   }
// }
