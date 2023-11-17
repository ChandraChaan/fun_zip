import 'package:flutter/material.dart';
import 'package:fun_zippy/app/routes/app_pages.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

class EventManagementScreen extends StatelessWidget {
  const EventManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Event Management',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){
                   Get.toNamed(Routes.MyEvents);
                  },
                  child: Container(
                    height: 22,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0XFFC61236))),
                    child: Center(
                      child: Text(
                        'Go to Events',
                        style: TextStyle(fontSize: 7, color: Color(0XFFC61236)),
                      ),
                    ),
                  ),
                ),
                5.width,
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: Icon(
                    Icons.cancel_outlined,
                    color: Color(0XFF5E5A80),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildRow('Basic Details', 'assets/svg/t1.png'),
            buildRow('Dashboard', 'assets/svg/t2.png'),
            buildRow('Contacts', 'assets/svg/t3.png'),
            buildRow('Ticketing & RSVP', 'assets/svg/t4.png'),
            buildRow('Sponsorships', 'assets/svg/t5.png'),
            buildRow('Booths', 'assets/svg/t6.png'),
            buildRow('Event Media', 'assets/svg/t7.png'),
            buildRow('Featured Guests', 'assets/svg/t8.png'),
            buildRow('Invitees', 'assets/svg/t9.png'),
            buildRow('Performers', 'assets/svg/t10.png'),
            buildRow('Event Scheduler', 'assets/svg/t11.png'),
            buildRow('Potluck Menu', 'assets/svg/t13.png'),
            buildRow('Volunteer Timeslots', 'assets/svg/t14.png'),
            buildRow('Gift Registry', 'assets/svg/t15.png'),
            buildRow('Accommodations', 'assets/svg/t16.png'),
            buildRow('Management Team', 'assets/svg/t17.png'),
            buildRow('Event Tasks', 'assets/svg/t18.png'),
            buildRow('Meetings', 'assets/svg/t19.png'),
            buildRow('Chat', 'assets/svg/t20.png'),
            buildRow('Start Check In', 'assets/svg/t21.png'),
            buildRow('Start Live', 'assets/svg/t22.png'),
          ],
        ),
      ),
    );
  }

  Widget buildRow(String title, String imagePath) {
    return InkWell(
      onTap: () {
        // Add your onTap functionality here
      },
      child: Row(
        children: [
          Container(
            height: 15,
            width: 15,
            child: Image.asset(imagePath),
          ),
          SizedBox(width: 8), // Adjust the space between image and text
          Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}