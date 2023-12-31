import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../../data/model/UserModel.dart';
import '../../data/repository/event_repository.dart';
import '../../widgets/error_snackbar.dart';
import '../qr_code/scanner.dart';
import '../../routes/app_pages.dart';
import '../../utilities/date_time_format.dart';
import '../../widgets/commonScafold.dart';

UserModel userModel = UserModel();

class MyEvents extends StatefulWidget {
  final bool isSfald;

  MyEvents({this.isSfald = false});

  @override
  State<MyEvents> createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  List<dynamic> data = [];
  //final getStorage = GetStorage();

  int calculateRemainingDays(String? startDatetime, String? endDatetime) {
    DateTime currentDate = DateTime.now();
    DateTime startDate = DateTime.parse(startDatetime.toString() != 'null'
        ? startDatetime.toString()
        : DateTime.now().toString());
    DateTime endDate = DateTime.parse(endDatetime.toString() != 'null'
        ? endDatetime.toString()
        : DateTime.now().toString());

    Duration? difference;
    if (currentDate.isBefore(endDate)) {
      difference = endDate.difference(currentDate);
    } else {
      difference = startDate.difference(currentDate);
    }
    return difference.inDays;
  }

  getManagedEvents() async {
    try {
      var response = await EventRepository().getManagedEvents();

      final bodyData = response['results'];
      setState(() {
        data.addAll(bodyData);
      });
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }

  @override
  void initState() {
    getManagedEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        body: ForBuilderEvent(
          chil: Column(
            children: <Widget>[
              Container(
                color: Color(0XFFEFEDFF),
                child: TabBar(
                  indicatorColor: Color(0XFF5B46F4),
                  labelColor: Color(0XFF5B46F4),
                  unselectedLabelColor: Color(0XFF696488),
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'Upcoming',
                        // style: TextStyle(color: Color(0XFF5B46F4)),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Completed',
                        // style: TextStyle(color: Color(0XFF5B46F4)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    // Content for Tab 1
                    data.isEmpty
                        ? Center(child: CircularProgressIndicator())
                        : SingleChildScrollView(
                            child: Column(
                              children: [
                                for (int a = 0; a < data.length; a++)
                                  if ((data[a]["endDateTime"]).toString() !=
                                      'null')
                                    if (DateTime.now().isBefore(DateTime.parse(
                                        "${data[a]["endDateTime"]}")))
                                      EventDetails(
                                          uid: "${data[a]['uid']}",
                                          summaryPicture:
                                              "${data[a]["summaryPicture"]}",
                                          name: "${data[a]["name"]}",
                                          startDateTime:
                                              "${data[a]["startDateTime"]}",
                                          endDateTime:
                                              "${data[a]["endDateTime"]}",
                                          city: "${data[a]["city"]}",
                                          visibility:
                                              "${data[a]["visibility"]}",
                                          attendanceMode:
                                              "${data[a]["attendanceMode"]}")
                              ],
                            ),
                          ),
                    // Content for Tab 2
                    data.isEmpty
                        ? Center(child: CircularProgressIndicator())
                        : SingleChildScrollView(
                            child: Column(
                              children: [
                                for (int a = 0; a < data.length; a++)
                                  if ((data[a]["endDateTime"]).toString() !=
                                      'null')
                                    if (!(DateTime.now().isBefore(
                                        DateTime.parse(
                                            "${data[a]["endDateTime"]}"))))
                                      EventDetails(
                                          uid: "${data[a]['uid']}",
                                          summaryPicture:
                                              "${data[a]["summaryPicture"]}",
                                          name: "${data[a]["name"]}",
                                          startDateTime:
                                              "${data[a]["startDateTime"]}",
                                          endDateTime:
                                              "${data[a]["endDateTime"]}",
                                          city: "${data[a]["city"]}",
                                          visibility:
                                              "${data[a]["visibility"]}",
                                          attendanceMode:
                                              "${data[a]["attendanceMode"]}")
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget EventDetails({
    required String uid,
    required String summaryPicture,
    required String name,
    required String startDateTime,
    required String endDateTime,
    required String city,
    required String visibility,
    required String attendanceMode,
  }) {
    // print("START date time "+startDateTime);
    // print("END date time "+endDateTime);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.EVENT_DETAILS, arguments: uid);
        },
        child: Container(
          height: 372,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0XFFC9C6E1)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  // adjust the radius as needed
                  child: Image.network(
                    summaryPicture,
                    fit: BoxFit.fill,
                    height: 210,
                    width: 370,
                    // when network image is not available, it shows an asset image
                    errorBuilder: (BuildContext context, Object error,
                        StackTrace? stackTrace) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        // adjust the radius as needed
                        child: Image.asset('assets/svg/img.png',
                            fit: BoxFit.cover, height: 210, width: 370),
                      );
                    },
                  ),
                ),
                SizedBox(height: 7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        name,
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 14,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      DateFormat('MMM-dd-yy')
                          .format(DateTime.parse(startDateTime)),
                      style: TextStyle(fontSize: 10),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 18,
                      width: 62,
                      decoration: BoxDecoration(
                        color: Color(0XFFFF5C00).withOpacity(.22),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          '${calculateRemainingDays(
                            startDateTime,
                            endDateTime,
                          )}'
                          ' Days Left',
                          style: TextStyle(
                            color: Color(0XFFFF5C00),
                            fontSize: 8,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 14,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      city,
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Color(0XFFD3CFEB),
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Text(
                      'Event Type',
                      style: TextStyle(fontSize: 10),
                    ),
                    const SizedBox(width: 14),
                    Text(
                      ': ${visibility}',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Attendance',
                            style: TextStyle(fontSize: 10),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            ': ${attendanceMode}',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0XFFDC143C),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: [
                          Container(
                            height: 27,
                            width: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Color(0XFFFD3A84)),
                            ),
                            child: InkWell(
                              onTap: () {
                                Get.to(QRCodeScannerScreen());
                              },
                              child: Icon(
                                Icons.photo_camera,
                                size: 16,
                                color: Color(0XFFFD3A84),
                              ),
                            ),
                          ),
                          const SizedBox(width: 7),
                          Container(
                            height: 27,
                            width: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Color(0XFF03A9F4)),
                            ),
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(Routes.EventDashboardScreen);
                              },
                              child: Image.asset('assets/svg/day.png'),
                            ),
                          ),
                          const SizedBox(width: 7),
                          Container(
                            height: 27,
                            width: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Color(0XFF5B46F4)),
                            ),
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(Routes.EventScreen);
                              },
                              child: Icon(
                                Icons.visibility_outlined,
                                size: 15,
                                color: Color(0XFF5B46F4),
                              ),
                            ),
                          ),
                          const SizedBox(width: 7),
                          Container(
                            height: 27,
                            width: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Color(0XFFFD3A84)),
                            ),
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(Routes.EditingEvent);
                              },
                              child: Icon(
                                Icons.edit,
                                size: 15,
                                color: Color(0XFFFD3A84),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ForBuilderEvent({required Widget chil}) {
    return widget.isSfald
        ? CommonScafold(
            title: 'My Events',
            selectedIndex: 2,
            navChild: true,
            child: chil,
          )
        : chil;
  }

// void navigateToEventScreen(data) {}
}
