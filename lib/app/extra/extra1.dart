// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:fun_zippy/app/utilities/extention.dart';
// import 'package:fun_zippy/sathya/event_dashboard/even_dashboard.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// import '../../app/routes/app_pages.dart';
//
// class MyEvents extends StatefulWidget {
//   const MyEvents({super.key});
//
//   @override
//   State<MyEvents> createState() => _MyEventsState();
// }
//
// class _MyEventsState extends State<MyEvents> {
//   bool Upcoming = false;
//   bool Completed = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // ... your existing code ...
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 46,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Color(0XFFEFEDFF),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         Upcoming = true;
//                         Completed = false;
//                       });
//                     },
//                     child: Container(
//                       child: Text(
//                         'Upcoming',
//                         style: TextStyle(
//                           color: Upcoming
//                               ? Colors.blue // Selected color
//                               : Color(0XFF5B46F4),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         border: Border(
//                             bottom: BorderSide(
//                                 color: Upcoming
//                                     ? Colors.blue // Selected color
//                                     : Colors.transparent)),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         Completed = true;
//                         Upcoming = false;
//                       });
//                     },
//                     child: Container(
//                       child: Text(
//                         'Completed',
//                         style: TextStyle(
//                           color: Completed
//                               ? Colors.blue // Selected color
//                               : Color(0XFF5B46F4),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         border: Border(
//                             bottom: BorderSide(
//                                 color: Completed
//                                     ? Colors.blue // Selected color
//                                     : Colors.transparent)),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // ... your existing code ...
//           ],
//         ),
//       ),
//     );
//   }
// }
