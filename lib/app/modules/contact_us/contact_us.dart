// import 'package:flutter/material.dart';
//
//
// class ContactUsCheckSraves extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color(0XFFF5F4F9),
//         appBar: AppBar(
//           automaticallyImplyLeading: true,
//           backgroundColor: Color(0XFFF5F4F9),
//           leading: Icon(Icons.menu_sharp, color: Colors.black),
//           title: Padding(
//             padding: const EdgeInsets.only(left: 75),
//             child: Text(
//               'Contact Us',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                   color: Color(0XFF000000)),
//             ),
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, top: 30),
//                   child: Row(
//                     children: [
//                       Text('First Name',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 14,
//                             color: Color(0XFF5E5A80),
//                           )),
//                       Text(
//                         '*',
//                         style:
//                         TextStyle(fontSize: 14, color: Color(0XFFDC143C)),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                   width: MediaQuery.of(context).size.width * 0.88,
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.05,
//                   width: MediaQuery.of(context).size.width * 0.90,
//                   alignment: Alignment.centerLeft,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                     border: Border.all(color: Colors.white),
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         contentPadding:
//                         EdgeInsets.symmetric(vertical: 5, horizontal: 18),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide.none),
//                         hintText: 'First Name',
//                         hintStyle: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0XFF86839B))),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, top: 20),
//                   child: Row(
//                     children: [
//                       Text('Last Name',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 14,
//                             color: Color(0XFF5E5A80),
//                           )),
//                       Text(
//                         '*',
//                         style:
//                         TextStyle(fontSize: 14, color: Color(0XFFDC143C)),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                   width: MediaQuery.of(context).size.width * 0.88,
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.05,
//                   width: MediaQuery.of(context).size.width * 0.90,
//                   alignment: Alignment.centerLeft,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                     border: Border.all(color: Colors.white),
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         contentPadding:
//                         EdgeInsets.symmetric(vertical: 5, horizontal: 18),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide.none),
//                         hintText: 'Last Name',
//                         hintStyle: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0XFF86839B))),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, top: 20),
//                   child: Row(
//                     children: [
//                       Text('Email',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 14,
//                             color: Color(0XFF5E5A80),
//                           )),
//                       Text(
//                         '*',
//                         style:
//                         TextStyle(fontSize: 14, color: Color(0XFFDC143C)),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                   width: MediaQuery.of(context).size.width * 0.88,
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.05,
//                   width: MediaQuery.of(context).size.width * 0.90,
//                   alignment: Alignment.centerLeft,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                     border: Border.all(color: Colors.white),
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         contentPadding:
//                         EdgeInsets.symmetric(vertical: 5, horizontal: 18),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide.none),
//                         hintText: 'Email',
//                         hintStyle: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0XFF86839B))),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, top: 20),
//                   child: Row(
//                     children: [
//                       Text('Event/Organization',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 14,
//                             color: Color(0XFF5E5A80),
//                           )),
//                       // Text('*',style: TextStyle(fontSize:14,color: Color(0XFFDC143C)),)
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                   width: MediaQuery.of(context).size.width * 0.88,
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.05,
//                   width: MediaQuery.of(context).size.width * 0.90,
//                   alignment: Alignment.centerLeft,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                     border: Border.all(color: Colors.white),
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       contentPadding:
//                       EdgeInsets.symmetric(vertical: 5, horizontal: 18),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide.none),
//                       hintText: 'Event/Organization',
//                       hintStyle: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400,
//                           color: Color(0XFF86839B)),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, top: 20),
//                   child: Row(
//                     children: [
//                       Text('What can we help you with?',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 14,
//                             color: Color(0XFF5E5A80),
//                           )),
//                       // Text('*',style: TextStyle(fontSize:14,color: Color(0XFFDC143C)),)
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                   width: MediaQuery.of(context).size.width * 0.88,
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.05,
//                   width: MediaQuery.of(context).size.width * 0.90,
//                   alignment: Alignment.centerLeft,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                     border: Border.all(color: Colors.white),
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         contentPadding:
//                         EdgeInsets.symmetric(vertical: 5, horizontal: 18),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide.none),
//                         hintText: 'What can we help you with?',
//                         hintStyle: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0XFF86839B)),
//                         suffixIcon: Icon(
//                           Icons.arrow_drop_down,
//                           color: Color(0XFF86839B),
//                           size: 30,
//                         )),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, top: 20),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('What can we help you with?',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 14,
//                             color: Color(0XFF5E5A80),
//                           )),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                   width: MediaQuery.of(context).size.width * 0.88,
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.15,
//                   width: MediaQuery.of(context).size.width * 0.90,
//                   alignment: Alignment.centerLeft,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                     border: Border.all(color: Colors.white),
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       // contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide.none),
//                         hintText: 'Write here.',
//                         hintStyle: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0XFF86839B))),
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.10,
//                   width: MediaQuery.of(context).size.width * 0.88,
//                 ),
//                 GestureDetector(onTap: (){
//                 },
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.05,
//                     width: MediaQuery.of(context).size.width * 0.90,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: Color(0XFFDC143C),
//                       border: Border.all(color: Color(0XFFDC143C)),
//                     ),
//                     child: Text(
//                       'Send',
//                       style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 16,
//                           color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ]),
//         ));
//   }
// }
//
