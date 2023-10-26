import 'package:flutter/material.dart';
import 'package:fun_zippy/app/widgets/rounded_border.dart';

import '../../app/modules/event_details/controllers/event_details_controller.dart';

class AddToCalendar extends StatelessWidget {
  const AddToCalendar({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 54,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 131,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color(0XFF5B46F4), // Border color
                            width: 2.0, // Border width
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Add to Calendar',
                            style: TextStyle(
                                color: Color(0XFF5B46F4), fontSize: 10),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(0XFF5B46F4))),
                        child: Icon(
                          Icons.favorite,
                          color: Color(0XFFC9C6E1),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(0XFF5B46F4))),
                        child: Icon(
                          Icons.share,
                          color: Color(0XFF5B46F4),
                        ),
                      ),
                      SizedBox(width: 55),
                      Container(
                        height: 26,
                        width: 91,
                        decoration: BoxDecoration(
                          color: Color(0XFF560B7E),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.videocam,
                              size: 15,
                              color: Colors.white,
                            ),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


