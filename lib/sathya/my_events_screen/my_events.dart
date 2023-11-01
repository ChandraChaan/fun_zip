import 'package:flutter/material.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../scanner.dart';

class MyEvents extends StatefulWidget {
  const MyEvents({super.key});

  @override
  State<MyEvents> createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: Image.asset('assets/svg/bars_2.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepPurple, // Border color
                  width: 2.0, // Border width
                ),
                shape: BoxShape.circle, // To make it a circular border
              ),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.qr_code,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          )
        ],
        title: Center(
            child: Text(
          'My Events',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 46,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFFEFEDFF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Upcoming',
                    style: TextStyle(color: Color(0XFF5B46F4)),
                  ),
                  Text(
                    'Completed',
                    style: TextStyle(color: Color(0XFF5B46F4)),
                  ),
                ],
              ),
            ),
            for (int a = 1; a < 4; a++)
              // for (int index = 0;
              // index < controller.eventDetailsModel.sponsors!.length;
              // index++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0XFFC9C6E1))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/svg/rectangle_32.png'),
                        SizedBox(height: 7),
                        Text(
                          'The Great Gatsby Party : Hyderabad',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 7),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 14,
                            ),
                            5.width,
                            Text(
                              'Aug 25, 2023 | 8:30PM',
                              style: TextStyle(fontSize: 10),
                            ),
                            10.width,
                            Container(
                              height: 18,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Text(
                                  '10 Days',
                                  style: TextStyle(
                                      color: Color(0XFFFF5C00), fontSize: 8),
                                ),
                              ),
                            )
                          ],
                        ),
                        5.width,
                        5.height,
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 14,
                            ),
                            5.width,
                            Text(
                              'Hi-tech City, Hyderabad',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0XFFD3CFEB),
                        ),
                        7.height,
                        Row(
                          children: [
                            Text(
                              'Event Type',
                              style: TextStyle(fontSize: 10),
                            ),
                            14.width,
                            Text(
                              ': Public',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Attendance',
                              style: TextStyle(fontSize: 10),
                            ),
                            10.width,
                            Text(
                              ': In Person',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0XFFDC143C)),
                            ),
                            30.width,
                            Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: Color(0XFFFD3A84))),
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
                            7.width,
                            Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: Color(0XFF03A9F4))),
                              child: InkWell(
                                  onTap: () {},
                                  child: Image.asset('assets/svg/day.png')),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
