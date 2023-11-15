// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';
//
// import '../../data/model/UserModel.dart';
// import '../../data/repository/event_repository.dart';
// import '../../widgets/error_snackbar.dart';
// import '../qr_code/scanner.dart';
// import '../../routes/app_pages.dart';
// import '../../utilities/date_time_format.dart';
// import '../../widgets/commonScafold.dart';
//
// UserModel userModel = UserModel();
//
// class MyEvents extends StatefulWidget {
//   final bool isSfald;
//
//   MyEvents({this.isSfald = false});
//
//   @override
//   State<MyEvents> createState() => _MyEventsState();
// }
//
// class _MyEventsState extends State<MyEvents> {
//   bool upcoming = false;
//   bool completed = false;
//
//   List<dynamic> data = [];
//   final getStorage = GetStorage();
//
//   int calculateRemainingDays(String? startDatetime, String? endDatetime) {
//     DateTime currentDate = DateTime.now();
//     DateTime startDate = DateTime.parse(startDatetime.toString() != 'null'
//         ? startDatetime.toString()
//         : DateTime.now().toString());
//     DateTime endDate = DateTime.parse(endDatetime.toString() != 'null'
//         ? endDatetime.toString()
//         : DateTime.now().toString());
//
//     Duration? difference;
//     if (currentDate.isBefore(endDate)) {
//       difference = endDate.difference(currentDate);
//     } else {
//       difference = startDate.difference(currentDate);
//     }
//     return difference.inDays;
//   }
//
//   getManagedEvents() async {
//     try {
//       var response = await EventRepository().getManagedEvents();
//
//       final bodyData = response['results'];
//       setState(() {
//         data.addAll(bodyData);
//       });
//     } catch (e) {
//       errorSnackbar(title: '$e', desc: '');
//     }
//   }
//
//   @override
//   void initState() {
//     getManagedEvents();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 2, // Number of tabs
//         child: Scaffold(
//           body: Column(
//               children: <Widget>[
//           Container(
//           color: Color(0XFFEFEDFF),
//           child: TabBar(
//             indicatorColor: Color(0XFF5B46F4),
//             tabs: <Widget>[
//               Tab(
//                 child: Text(
//                   'Upcoming',
//                   style: TextStyle(color: Color(0XFF5B46F4)),
//                 ),
//               ),
//               Tab(
//                 child: Text('Completed',
//                     style: TextStyle(color: Color(0XFF5B46F4))),
//               ),
//             ],
//           ),
//         ),
//         Expanded(
//             child: TabBarView(
//                 children: <Widget>[
//             // Content for Tab 1
//             ForBuilderEvent(
//             chil: data.isEmpty
//                 ? Center(child: CircularProgressIndicator())
//             : SingleChildScrollView(
//     child: Column(
//     children: [
//     for (int a = 0; a < data.length; a++)
//     Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: InkWell(
//         onTap: () {
//       Get.toNamed(Routes.EVENT_DETAILS,
//           arguments: data[a]['uid']);
//     },
//     child: Container(
//     height: 372,
//     decoration: BoxDecoration(
//     borderRadius:
//     BorderRadius.circular(15),
//     border: Border.all(
//     color: Color(0XFFC9C6E1)),
//     ),
//     child: Padding(
//     padding: const EdgeInsets.all(14),
//     child: Column(
//     mainAxisAlignment:
//     MainAxisAlignment.center,
//     crossAxisAlignment:
//     CrossAxisAlignment.center,
//     children: [
//     ClipRRect(
//     borderRadius:
//     BorderRadius.circular(20),
//     // adjust the radius as needed
//     child: Image.network(
//     '${data[a]["summaryPicture"]}',
//     fit: BoxFit.cover,
//     height: 210,
//     width: 370,
//     // when network image is not available, it shows an asset image
//     errorBuilder: (BuildContext
//     context,
//     Object error,
//     StackTrace? stackTrace) {
//     return ClipRRect(
//     borderRadius:
//     BorderRadius.circular(
//     20),
//     // adjust the radius as needed
//     child: Image.asset(
//     'assets/svg/img.png',
//     fit: BoxFit.cover,
//     height: 210,
//     width: 370),
//     );
//     },
//     ),
//     ),
//     SizedBox(height: 7),
//     Row(
//     mainAxisAlignment:
//     MainAxisAlignment.start,
//     children: [
//     Flexible(
//     child: Text(
//     '${data[a]["name"]}',
//     maxLines: 1,
//     overflow:
//     TextOverflow.visible,
//     style: TextStyle(
//     fontSize: 16),
//     ),
//     ),
//     ],
//     ),
//     SizedBox(height: 7),
//     Row(
//     children: [
//     Icon(
//     Icons.calendar_today,
//     size: 14,
//     ),
//     const SizedBox(width: 5),
//     Text(
//     DateFormat('MMM-dd-yy').format(
//     DateTime.parse(data[a]
//     ["startDateTime"])),
//     style:
//     TextStyle(fontSize: 10),
//     ),
//     const SizedBox(width: 10),
//     Container(
//     height: 18,
//     width: 62,
//     decoration: BoxDecoration(
//     color: Color(0XFFFF5C00)
//         .withOpacity(.22),
//     borderRadius:
//     BorderRadius.circular(
//     25),
//     ),
//     child: Center(
//     child: Text(
//     '${calculateRemainingDays(
//     data[a]
//     ["startDateTime"],
//     data[a]
//     ["endDateTime"],
//     )}'
//     ' Days Left',
//     style: TextStyle(
//     color:
//     Color(0XFFFF5C00),
//     fontSize: 8,
//     ),
//     ),
//     ),
//     ),
//     ],
//     ),
//     const SizedBox(height: 5),
//     Row(
//     children: [
//     Icon(
//     Icons.location_on_outlined,
//     size: 14,
//     ),
//     const SizedBox(width: 5),
//     Text(
//     '${data[a]["city"]}',
//     style:
//     TextStyle(fontSize: 10),
//     ),
//     ],
//     ),
//     Divider(
//     thickness: 1,
//     color: Color(0XFFD3CFEB),
//     ),
//     const SizedBox(height: 7),
//     Row(
//     children: [
//     Text(
//     'Event Type',
//     style:
//     TextStyle(fontSize: 10),
//     ),
//     const SizedBox(width: 14),
//     Text(
//     ': ${data[a]["visibility"]}',
//     style:
//     TextStyle(fontSize: 10),
//     ),
//     ],
//     ),
//     Expanded(
//     flex: 5,
//     child: Row(
//     mainAxisAlignment:
//     MainAxisAlignment
//         .spaceBetween,
//     children: [
//     Row(
//     children: [
//     Text(
//     'Attendance',
//     style: TextStyle(
//     fontSize: 10),
//     ),
//     const SizedBox(
//     width: 10),
//     Text(
//     ': ${data[a]["attendanceMode"]}',
//     style: TextStyle(
//     fontSize: 10,
//     color: Color(
//     0XFFDC143C),
//     ),
//     ),
//     ],
//     ),
//     const SizedBox(width: 30),
//     Row(
//     children: [