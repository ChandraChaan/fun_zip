import 'dart:collection';

import 'package:device_calendar/device_calendar.dart';
import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/widgets/rounded_border.dart';
import 'package:share_plus/share_plus.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:url_launcher/url_launcher.dart';
import '../event_details/controllers/event_details_controller.dart';

class AddToCalendar extends StatefulWidget {
  AddToCalendar({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  State<AddToCalendar> createState() => _AddToCalendarState();
}

class _AddToCalendarState extends State<AddToCalendar> {
// Function to share content
  Future<void> onShare(String? link) async {
    await Share.share(
      "$link",
    );
  }

  void onAddToCalendar(BuildContext context) async {
    final DeviceCalendarPlugin _deviceCalendarPlugin = DeviceCalendarPlugin();
    final Result<UnmodifiableListView<Calendar>> calendarsResult =
        await _deviceCalendarPlugin.retrieveCalendars();

    if (calendarsResult.isSuccess && calendarsResult.data!.isNotEmpty) {
      final List<Calendar>? calendars = calendarsResult.data?.toList();

      final Event event = Event(
        calendars?.first.id, // Use the calendarId to specify the calendar
        title: 'Event Title',
        description: 'Event Description',
        start: tz.TZDateTime.now(tz.local),
        end: tz.TZDateTime.now(tz.local).add(Duration(hours: 1)),
      );

      final Result<String>? result =
          await _deviceCalendarPlugin.createOrUpdateEvent(event);

      if (result!.isSuccess) {
        // Event added successfully
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Added to Calendar'),
              content: Text('Event added to the calendar successfully.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        // Failed to add event
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Failed to add event to the calendar.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } else {
      // No calendars found
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('No calendars found on the device.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //height: 54,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: ElevatedButton(
                      onPressed: () {
                        onAddToCalendar(context);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Color(0XFF5B46F4), // Border color
                            width: 2.0, // Border width
                          ),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Add to Calendar',
                              style: TextStyle(
                                color: Color(0XFF5B46F4),
                                fontSize: 10,
                              ),
                            ),
                            // Container(
                            //     height: 12,
                            //     child: Image.asset('assets/svg/expand.png',color: Color(0XFF5B46F4),)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(110),
                            border: Border.all(color: Color(0XFF5B46F4)),
                          ),
                          child: Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            size: 15,
                            color: isLiked ? Colors.red : Color(0XFFC9C6E1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(110),
                          border: Border.all(color: Color(0XFF5B46F4))),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
        // check and change if required the URL name Satya
                          onShare(widget
                              .controller.eventDetailsModel.canonicalUrl);
                        },
                        child: Center(
                          child: Tooltip(
                            message: 'Share',
                            child: Icon(
                              Icons.share,
                              size: 15,
                              color: Color(0XFF5B46F4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        launch("https://www.kicknology.com/");
                      },
                      child: Container(
                        height: 26,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0XFF560B7E),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.videocam,
                              size: 12,
                              color: Colors.white,
                            ),
                            SizedBox(width: 3),
                            Text(
                              'Watch Live',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
