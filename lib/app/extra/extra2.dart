// import 'package:flutter/material.dart';
// import 'package:fun_zippy/app/theme/colors.dart';
// import 'package:fun_zippy/app/utilities/extention.dart';
//
// class EventManagementScreen extends StatelessWidget {
//   const EventManagementScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'Event Management',
//               style: TextStyle(color: Colors.black),
//             ),
//             Row(
//               children: [
//                 Container(
//                   height: 22,
//                   width: 55,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(color: Color(0XFFC61236))),
//                   child: Center(
//                     child: Text(
//                       'Go to Events',
//                       style: TextStyle(fontSize: 7, color: Color(0XFFC61236)),
//                     ),
//                   ),
//                 ),
//                 5.width,
//                 Icon(
//                   Icons.cancel_outlined,
//                   color: Color(0XFF5E5A80),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 6),
//         child: Container(
//           color: Colors.white,
//           height: 1150,
//           width: double.infinity,
//           child: Padding(
//             padding: const EdgeInsets.all(15),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t1.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Basic Details',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t2.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Dashboard',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t3.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Contacts',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t4.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Ticketing & RSVP',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t5.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Sponsorships',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t6.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Booths',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t7.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Event Media',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t8.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Featured Guests',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t9.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Invitees',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t10.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Performers',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t11.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Event Scheduler',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t13.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Potluck Menu',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t14.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Volunteer Timeslots',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t15.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Gift Registry',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: {}{},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t16.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Accommodations',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t17.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Management Team',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t18.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Event Tasks',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t19.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Meetings',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t20.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Chat',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t21.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Start Check In',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 15,
//                         width: 15,
//                         child: Image.asset('assets/svg/t22.png'),
//                       ),
//                       Expanded(
//                         child: Center(
//                           child: Text(
//                             'Start Live',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
