import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../common_data/common_text.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  String selectedOptions = '';

  int selectedOption = 0;

  void selectOption(int option) {
    setState(() {
      selectedOption = option;
    });
  }

  Widget buildCircleOption(int index, String text) {
    return GestureDetector(
      onTap: () => selectOption(index),
      child: Row(
        children: [
          Icon(
            selectedOption == index ? Icons.circle : Icons.circle_outlined,
            size: 14,
            color: Color(0XFF5B46F4),
          ),
          SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
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
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0XFF5B46F4), // Border color
                  width: 2.0, // Border width
                ),
                shape: BoxShape.circle, // To make it a circular border
              ),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: backgroundColor,
                          title: Column(
                            children: [
                              Text('QR Code'),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset("assets/svg/qr_code.png"),
                              SizedBox(height: 15),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 35,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFC61236),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Done',
                                    style: (TextStyle(
                                        color: Colors.white, fontSize: 14)),
                                  )),
                                  //                            fillColor: Color(0XFFC61236),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(
                    Icons.qr_code,
                    color: Color(0XFF5B46F4),
                  ),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 330,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Basic Details',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text10('Event Name'),
                          ),
                          Expanded(
                            flex: 8,
                            child:
                                Text10(': The Great Gatsby Party : Hyderabad'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text10('Start date & time'),
                          ),
                          Expanded(
                            flex: 8,
                            child: Text10(': Dec 9, 2023 06:00 PM'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text10('End Date & time'),
                          ),
                          Expanded(
                            flex: 8,
                            child: Text10(': Dec 9, 2023'),
                          ),
                        ],
                      ),
                      Text10('Event Locality'),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                // Set the selected option when the container is tapped
                                setSelectedOptions('In Person');
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: selectedOptions == 'In Person'
                                      ? Color(0XFF5B46F4)
                                      : Color(0XFFE3DFFF),
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
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                // Set the selected option when the container is tapped
                                setSelectedOptions('Online');
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: selectedOptions == 'Online'
                                      ? Color(0XFF5B46F4)
                                      : Color(0XFFE3DFFF),
                                  border: Border.all(color: Color(0XFF5B46F4)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Online',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                // Set the selected option when the container is tapped
                                setSelectedOptions('Mixed');
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: selectedOptions == 'Mixed'
                                      ? Color(0XFF5B46F4)
                                      : Color(0XFFE3DFFF),
                                  border: Border.all(color: Color(0XFF5B46F4)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Mixed',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text10('Event location'),
                          ),
                          Expanded(
                            flex: 8,
                            child: Text10(': Taj Banjara, Hyderabad'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text10('Address'),
                          ),
                          Expanded(
                            flex: 8,
                            child: Text10(': Rd Number1'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text10('City'),
                          ),
                          Expanded(
                            flex: 8,
                            child: Text10(': Hyderabad'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text10('State'),
                            flex: 3,
                          ),
                          Expanded(flex: 8, child: Text10(': TS')),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text10('Zip'),
                            flex: 3,
                          ),
                          Expanded(flex: 8, child: Text10(': 500034')),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text10('Country'),
                            flex: 3,
                          ),
                          Expanded(flex: 8, child: Text10(': India')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 135,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Event access',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        buildCircleOption(0,
                            'Public Once published, anyone will be able to see this event'),
                        buildCircleOption(1,
                            'Group (Invite only) Once published, people with the link will \nbe able to see this event.'),
                        buildCircleOption(2,
                            'Personal appointment, only you will be able to see this event.')
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 470,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text10('Event Category'),
                          ),
                          Expanded(
                            flex: 8,
                            child: Text10(': Taj banjara,Hyderabad'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text10('Event Sub Category'),
                          ),
                          Expanded(
                            flex: 8,
                            child: Text10(': Rd Number 1'),
                          ),
                        ],
                      ),
                      Text(
                        'Thumbnail Images',
                        style:
                            TextStyle(fontSize: 10, color: Color(0XFF5E5A80)),
                      ),
                      Stack(
                        children: [
                          Image.asset('assets/svg/rectangle_111.png'),
                        ],
                      ),
                      Text(
                        'Event description',
                        style:
                            TextStyle(fontSize: 10, color: Color(0XFF5E5A80)),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'RSVP means Please reply ( we are asking invitees/guests to reply if they are coming for event or attending the event , if so how many- so that you can plan your logistics around the count.) In Some cases like sri mantham or baby shower, please add gift registry to that guests can buy the items that are ',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          )),
                      Text(
                        'Event Tags',
                        style:
                            TextStyle(fontSize: 10, color: Color(0XFF5E5A80)),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 43,
                            child: Center(
                                child: Text(
                              'Party',
                              style: TextStyle(
                                  fontSize: 8, color: Color(0XFFFF5C00)),
                            )),
                            decoration: BoxDecoration(
                                color: Color(0XFFFF5C00).withOpacity(.22),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 18,
                            width: 43,
                            child: Center(
                                child: Text(
                              'Event',
                              style: TextStyle(
                                  fontSize: 8, color: Color(0XFFDC143C)),
                            )),
                            decoration: BoxDecoration(
                                color: Color(0XFFDC143C).withOpacity(.20),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 18,
                            width: 68,
                            child: Center(
                                child: Text(
                              'Hyderabad',
                              style: TextStyle(
                                  fontSize: 8, color: Color(0XFF9747FF)),
                            )),
                            decoration: BoxDecoration(
                                color: Color(0XFF9747FF).withOpacity(.20),
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void setSelectedOptions(String option) {
    setState(() {
      selectedOptions = option;
    });
  }
}
