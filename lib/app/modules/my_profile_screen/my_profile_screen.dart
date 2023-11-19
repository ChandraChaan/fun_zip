import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';

import '../../data/repository/event_repository.dart';
import '../../widgets/error_snackbar.dart';

class MyProfile extends StatefulWidget {
  //const MyProfile({super.key});
  final bool isMyProfile;

  MyProfile({this.isMyProfile = false});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  Map profileData = {};

  Future<void> getProfile() async {
    try {
      var response = await EventRepository().getProfile();
      // print(response.toString());
      //print('Sathya get profile');
      final bodyData = response;
      setState(() {
        profileData = (bodyData); // Wrap bodyData in a list
      });
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }

  @override
  void initState() {
    getProfile();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 85,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.deepPurple, // Border color
                            width: 2.0, // Border width
                          ),
                          shape:
                              BoxShape.circle, // To make it a circular border
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
                                '${profileData.isNotEmpty ? profileData["profilePic"] : ""}',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${profileData.isNotEmpty ? profileData["firstName"] : ""} ${profileData.isNotEmpty ? profileData["lastName"] : ""}',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                Image.asset('assets/svg/center.png'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text10(
                                    '${profileData.isNotEmpty ? profileData["emailAddress"] : ""}')
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                Image.asset('assets/svg/vector_2.png'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text10(
                                    '${profileData.isNotEmpty ? profileData["phoneNumber"] : ""}')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                height: 660,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Edit Your Personal Settings',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'First Name',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["firstName"] : ""}',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Text10(
                        'Last Name',
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["lastName"] : ""}',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Email Address',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["emailAddress"] : ""}',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Phone Number',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            // Country code
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '+91',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors
                                      .grey, // You can adjust the color as needed
                                ),
                              ),
                            ),
                            // Vertical divider
                            VerticalDivider(
                              width: 1,
                              color: Colors
                                  .grey, // You can adjust the color as needed
                            ),
                            // Phone number text field
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:
                                        '${profileData.isNotEmpty ? profileData["phoneNumber"] : ""}',
                                    hintStyle: TextStyle(fontSize: 11),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Website',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["websiteLink"] : ""}',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Text(
                        'Address1',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["address"]["address1"] : ""}',
                              hintStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'City',
                        style: TextStyle(fontSize: 10),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["address"]["city"] : ""}',
                              hintStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'State/Province',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["address"]["state"] : ""}',
                              hintStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Country',
                            style: TextStyle(fontSize: 11),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Text(
                            'Zip/Postal Code',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0XFFF5F4F9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:
                                        '${profileData.isNotEmpty ? profileData["address"]["country"] : ""}',
                                    hintStyle: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Expanded(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0XFFF5F4F9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:
                                        '${profileData.isNotEmpty ? profileData["address"]["postalCode"] : ""}',
                                    hintStyle: TextStyle(fontSize: 11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Social Profiles',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Facebook',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["socialProfiles"]["facebook"] : ""}',
                              hintStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Last Name',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["lastName"] : ""}',
                              hintStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Email Address',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["emailAddress"] : ""}',
                              hintStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Instagram',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  '${profileData.isNotEmpty ? profileData["socialProfiles"]["instagram"] : ""}',
                              hintStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Google+',
                        style: TextStyle(fontSize: 11),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:  //data diaplay
                                  '${profileData.isNotEmpty ? profileData["instagram"] : ""}',
                              hintStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              10.height,
              InkWell(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFFC61236),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    'Save',
                    style: (TextStyle(color: Colors.white, fontSize: 14)),
                  )),
                  //                            fillColor: Color(0XFFC61236),
                ),
              ),
              10.height,
              InkWell(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0XFFC61236))),
                  child: Center(
                      child: Text(
                    'My Organization',
                    style: (TextStyle(color: Color(0XFFC61236), fontSize: 14)),
                  )),
                  //                            fillColor: Color(0XFFC61236),
                ),
              ),
              10.height,
              InkWell(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0XFFC61236))),
                  child: Center(
                      child: Text(
                    'My Business',
                    style: (TextStyle(color: Color(0XFFC61236), fontSize: 14)),
                  )),
                  //                            fillColor: Color(0XFFC61236),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget ForBuilderEvent({required Widget chil}) {
    return widget.isMyProfile
        ? CommonScafold(
      title: 'My tickets',
      selectedIndex: 2,
      navChild: false,
      child: chil,
    )
        : chil;
  }
}
