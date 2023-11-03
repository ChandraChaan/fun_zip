import 'package:flutter/material.dart';
import 'package:fun_zippy/app/routes/app_pages.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../common_data/common_text.dart';

class ScarlettScreen extends StatelessWidget {
  const ScarlettScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                child: ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: 10,
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.deepPurple, // Border color
                        width: 2.0, // Border width
                      ),
                      shape: BoxShape.circle, // To make it a circular border
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/svg/ellipse_1.png',
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                  title: SizedBox(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Scarlett Johansson',
                          style: TextStyle(fontSize: 16),
                        ),
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.cancel_outlined))
                      ],
                    ),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/svg/email_grey.png'),
                          5.width,
                          Text10('johansson@gmail.com')
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/svg/phone_grey.png'),
                          5.width,
                          Text10('+91 9876543210')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              buildRow('Home', 'assets/svg/h1.png'),
              buildRow('Create an Event', 'assets/svg/h2.png'),
              buildRow('My Events', 'assets/svg/h3.png'),
              buildRow('My Tickets', 'assets/svg/h4.png'),
              buildRow('My Group', 'assets/svg/h5.png'),
              buildRow('My Profile', 'assets/svg/h6.png'),
              buildRow('Blog', 'assets/svg/h7.png'),
              buildRow('Contact Us', 'assets/svg/h8.png'),
              buildRow('About Us', 'assets/svg/h9.png'),
              buildRow('Privacy Policy', 'assets/svg/h10.png'),
              buildRow('Log Out', 'assets/svg/exit.png'),
            ],
          ),
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
