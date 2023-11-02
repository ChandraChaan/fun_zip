import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/sathya/common_data/common_text.dart';
import 'package:get/get.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
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
            'Event',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 392,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Basic Details',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text10('Event Name'),
                          Text10(': The Great Gatsby Party : Hyderabad')
                        ],
                      ),
                      Row(
                        children: [
                          Text10('Start date & ime'),
                          Text10(': Dec 9, 2023 06:00 PM'),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex:3 ,child: Text10('End Date & time')),
                          Expanded(
                              flex: 8,
                              child: Text10(': Dec 9, 2023')),
                        ],
                      ),
                      Text10('Event Locality'),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0XFFE3DFFF),
                                border: Border.all(color: Color(0XFF5B46F4)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'In Person',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0XFFE3DFFF),
                                border: Border.all(color: Color(0XFF5B46F4)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                    'Online',
                                    style: TextStyle(fontSize: 10),
                                  )),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0XFFE3DFFF),
                                border: Border.all(color: Color(0XFF5B46F4)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                    'Mixed',
                                    style: TextStyle(fontSize: 10),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(flex:3,child: Text10('Event location')),
                          Expanded(
                              flex: 8,
                              child: Text10(': Taj Banjara,Hyderabad')),
                        ],
                      ),
                      Row(
                        children: [
                          Text10('Address'),
                          Text10(': Rd Number1'),
                        ],
                      ),
                      Row(
                        children: [
                          Text10('City'),
                          Text10(': Hyderabad'),
                        ],
                      ),
                      Row(
                        children: [
                          Text10('State'),
                          Text10(': TS'),
                        ],
                      ),
                      Row(
                        children: [
                          Text10('Zip'),
                          Text10(': 500034'),
                        ],
                      ),
                      Row(
                        children: [
                          Text10('Country'),
                          Text10(': India'),
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
