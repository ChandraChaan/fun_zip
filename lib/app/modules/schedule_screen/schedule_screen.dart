// Import necessary libraries
import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../event_details/controllers/event_details_controller.dart';

class ScheduleScreen extends StatelessWidget {
  final EventDetailsController controller;

  const ScheduleScreen({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
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
          ),
        ],
        title: Center(
          child: Text(
            'Schedule',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: controller.eventDetailsModel.displaySchedule!.length,
        itemBuilder: (context, index) {
          final scheduleKey = controller
              .eventDetailsModel.displaySchedule!.keys
              .toList()[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(7),
                child: Container(
                  height: 46,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEFEDFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$scheduleKey',
                          style: TextStyle(color: const Color(0XFF5B46F4)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ScheduleDetails(
                    index: index,
                    controller: controller,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ScheduleDetails extends StatelessWidget {
  final EventDetailsController controller;
  final int index;

  const ScheduleDetails(
      {Key? key, required this.controller, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scheduleKeys =
    controller.eventDetailsModel.displaySchedule!.keys.toList();
    final currentScheduleKey = scheduleKeys[index];
    final scheduleMap =
    controller.eventDetailsModel.displaySchedule![currentScheduleKey]!;
    final scheduleLength = scheduleMap.length;

    return Column(
      children: [
        for (int a = 0; a < scheduleLength; a++)
          ..._buildScheduleItem(scheduleMap.keys.toList()[a], scheduleMap),
      ],
    );
  }

  List<Widget> _buildScheduleItem(
      String key, Map<String, dynamic> scheduleMap) {
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              key,
              style: TextStyle(fontSize: 18),
            ),
            ListView.separated(
              itemCount: scheduleMap[key].length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, count) {
                return _buildScheduleCard(scheduleMap[key][count]);
              },
              separatorBuilder: (context, index) => SizedBox(height: 10),
            ),
          ],
        ),
      ),
    ];
  }

  Widget _buildScheduleCard(Map<String, dynamic> scheduleItem) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                ),
                6.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${_formatTime(scheduleItem['startDateTime'] ?? "Empty")} ',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                        Text(
                          '${_formatTime(scheduleItem['endDateTime'] ?? "Empty")} ',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Text(
                      '${scheduleItem['name'] ?? "Empty"}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${scheduleItem['participants'] ?? "Empty"}',
                      style: TextStyle(fontSize: 10, color: Colors.black45),
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    String formattedTime = DateFormat.jm().format(dateTime); // e.g., 9:30 AM
    return formattedTime;
  }
}
