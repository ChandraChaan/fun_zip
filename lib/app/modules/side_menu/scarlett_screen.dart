import 'package:flutter/material.dart';
import 'package:fun_zippy/app/routes/app_pages.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../common_data/common_text.dart';

class SideMenuScreen extends StatefulWidget {
  final bool isSide;
  final int? selectedIndex;

  SideMenuScreen(
      {this.isSide = false, this.selectedIndex, required this.profileData});

  final Map profileData;

  @override
  State<SideMenuScreen> createState() => _SideMenuScreen();
}

class _SideMenuScreen extends State<SideMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
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
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Container(
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: Image.network(
                          '${widget.profileData.isNotEmpty ? widget.profileData["profilePic"] : ""}',
                        ),
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
                        '${widget.profileData.isNotEmpty ? widget.profileData["firstName"] : ""} ${widget.profileData.isNotEmpty ? widget.profileData["lastName"] : ""}',
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
                        Text10(
                            '${widget.profileData.isNotEmpty ? widget.profileData["emailAddress"] : ""}')
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/svg/phone_grey.png'),
                        5.width,
                        //  Text10('+91 9876543210')

                        Text10(
                            '${widget.profileData.isNotEmpty ? widget.profileData["phoneNumber"] : ""}')
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
    );
  }

  Widget buildRow(String title, String imagePath) {
    return Container(
      // color: widget.selectedIndex ? Colors.blue,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 4.0,
        ),
        horizontalTitleGap: 4.0,
        minVerticalPadding: 15.0,
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
            Get.toNamed(Routes.MyTickets);

          } else if (title.contains('My Group')) {
            Get.toNamed(Routes.MyGroupsScreen);

          } else if (title.contains('Blog')) {
            Get.toNamed(Routes.BlogsScreen);

          } else if (title.contains('Contact Us')) {
            Get.toNamed(Routes.ContactUsScreen);

          } else if (title.contains('Log Out')) {
            final getStorage = GetStorage();

            getStorage.erase();
            Get.offAllNamed(Routes.SIGN_IN);
          }
        },
        title: Padding(
          padding: const EdgeInsets.only(bottom: 7.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 12), // You can adjust the font size
          ),
        ),
        leading: Container(
          height: 16, // Adjust as needed for the leading container height
          width: 16, // Adjust as needed for the leading container width
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}
