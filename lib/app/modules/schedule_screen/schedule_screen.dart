import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../event_details/controllers/event_details_controller.dart';

class ScheduleScreen extends StatelessWidget {
  final EventDetailsController controller;

  const ScheduleScreen({super.key, required this.controller});

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
                controller.eventDetailsModel.displaySchedule!.length,
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
                            '${controller.eventDetailsModel.displaySchedule!.keys.toList()[index]}',
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
                          index: index,
                          controller: controller,
                        )),
                  ),
                ],
              );
            }),
      ),
    );
  }
}

class schedule_details extends StatelessWidget {
  final EventDetailsController controller;
  final int index;

  const schedule_details({Key? key, required this.controller,required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(

          '${controller.eventDetailsModel.displaySchedule!.keys.toList()[index]}',
          style: TextStyle(fontSize: 18),
        ),
        ListView.builder(
            itemCount: 13,
            shrinkWrap: false,
            padding: EdgeInsets.only(bottom: 10, top: 30),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, count) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'hdhdh',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 14),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        'g',
                                        // 'What is Spring?',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black45),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "description",
                                        // 'Glenn Renfro, Scarlett Johansson,Chris Evans',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black45),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))),
              );
            }),
      ],
    );
  }
}
