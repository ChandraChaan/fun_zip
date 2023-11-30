import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

import '../../data/model/EventDetailsModel.dart';
import '../../data/repository/event_repository.dart';
import '../../widgets/error_snackbar.dart';
import '../event_details/controllers/event_details_controller.dart';

class ScheduleScreen extends StatefulWidget {
  final EventDetailsController controller;

  const ScheduleScreen({super.key, required this.controller});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            child: Image.asset('assets/svg/ellipse_1.png'),
          )
        ],
        title: Center(
            child: Text(
          'Schedule',
          style: TextStyle(color: Colors.black, fontSize: 18),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount:
                widget.controller.eventDetailsModel.displaySchedule!.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Container(
                        height: 46,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0XFFEFEDFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Day 1',
                            style: TextStyle(color: Color(0XFF5B46F4)),
                          ),
                        ),
                      )),
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: schedule_details(
                          controller: widget.controller,
                        )),
                  ),
                ],
              );
            }),
      ),
    );
  }
}

class schedule_details extends StatefulWidget {
  final EventDetailsController controller;

  const schedule_details({Key? key, required this.controller})
      : super(key: key);

  @override
  State<schedule_details> createState() => _schedule_detailsState();
}

class _schedule_detailsState extends State<schedule_details> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          'Beginner Friendly Spring',
          style: TextStyle(fontSize: 18),
        ),
        ListView.builder(
            itemCount: (widget.controller.eventDetailsModel
                    .displaySchedule["Sep 22"]["Room"])!
                .length,
            shrinkWrap: false,
            padding: EdgeInsets.only(bottom: 10, top: 30),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, count) {
              return Container(
                  height: 86,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Icon(
                                  Icons.calendar_today,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      DateFormat("MMM dd, yyyy")
                                          .format(DateTime.parse(
                                        widget.controller.eventDetailsModel
                                                .displaySchedule["Sep 22"]
                                            ["Room"][count]["startDateTime"],
                                      )),
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 14),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      widget.controller.eventDetailsModel
                                              .displaySchedule["Sep 22"]["Room"]
                                          [count]["name"],
                                      // 'What is Spring?',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      widget.controller.eventDetailsModel
                                              .displaySchedule["Sep 22"]["Room"]
                                          [count]["description"],
                                      // 'Glenn Renfro, Scarlett Johansson,Chris Evans',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black45),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )));
            }),
      ],
    );
  }
}
