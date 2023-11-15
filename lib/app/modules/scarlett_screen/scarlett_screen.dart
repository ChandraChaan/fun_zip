import 'package:flutter/material.dart';
import 'package:fun_zippy/app/routes/app_pages.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../data/repository/event_repository.dart';
import '../../widgets/error_snackbar.dart';
import '../common_data/common_text.dart';
import '../my_profile_screen/my_profile_screen.dart';

class ScarlettScreen extends StatelessWidget {
final Map profileData;

  const ScarlettScreen({super.key, required this.profileData});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
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
                          '${profileData.isNotEmpty ? profileData["firstName"] : ""} ${profileData.isNotEmpty ? profileData["lastName"] : ""}',
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
                          Text10('${profileData.isNotEmpty ? profileData ["emailAddress"] : ""}')
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/svg/phone_grey.png'),
                          5.width,
                          //  Text10('+91 9876543210')

                          Text10(
                              '${profileData.isNotEmpty ? profileData["phoneNumber"] : ""}')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2,
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
              Divider(
                thickness: 2,
              ),
              buildRow('Log Out', 'assets/svg/exit.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(String title, String imagePath) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 4.0,
      ),
      horizontalTitleGap: 7.0,
      minVerticalPadding: 5.0,
      minLeadingWidth: 24.0,
      onTap: () {
        if (title.contains('My Profile')) {
          Get.toNamed(Routes.MyProfile);
        } else if (title.contains('Home')) {
          Get.toNamed(Routes.HOME);
        } else if (title.contains('Create an Event')) {
          Get.toNamed(Routes.CREATE_EVENT);
        } else if (title.contains('My Events')) {
          Get.toNamed(Routes.MyEvents);
        } else if (title.contains('My Tickets')) {
          //TODO
          Get.toNamed(Routes.MyTickets);
        } else if (title.contains('My Group')) {
          //TODO
          Get.toNamed(Routes.MyEvents);
        } else if (title.contains('Blog')) {
          Get.toNamed(Routes.BookTickets);
        } else if (title.contains('Log Out')) {
          final getStorage = GetStorage();
          getStorage.erase();
          Get.offAllNamed(Routes.SIGN_IN);
        }
      },
      title: Text(
        title,
        style: TextStyle(fontSize: 12), // You can adjust the font size
      ),
      leading: Container(
        height: 15, // Adjust as needed for the leading container height
        width: 15, // Adjust as needed for the leading container width
        child: Image.asset(imagePath),
      ),
    );
  }
}
