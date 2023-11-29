import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fun_zippy/app/data/repository/event_repository.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:fun_zippy/app/widgets/error_snackbar.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../routes/app_pages.dart';
import '../../../../widgets/rounded_border.dart';
import '../../../create_event/controllers/create_event_controller.dart';
import '../../../sign_up/controllers/sign_up_controller.dart';
import '../../controllers/event_details_controller.dart';

class SignUpItemWidget extends StatelessWidget {
  const SignUpItemWidget({
    super.key,
    this.controller,
  });

  final EventDetailsController? controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text('Sign up Items', style: titleBoldText),
              Text('Sign up to a slot below', style: normalText.copyWith()),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller!.eventDetailsModel.timeSlots!.length,
                  itemBuilder: (context, a) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: 84,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0XFFC9C6E1))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Color(0XFFE1FFCF),
                                        borderRadius: BorderRadius.circular(2)),
                                    child: Icon(
                                      Icons.calendar_today,
                                      size: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            controller!.formatDate(controller!
                                                    .eventDetailsModel
                                                    .timeSlots![a]
                                                ['startDateTime']),
                                            style: TextStyle(fontSize: 14)),
                                        SizedBox(height: 8),
                                        Text(
                                          controller!.formatTimeRange(
                                              controller!.eventDetailsModel
                                                      .timeSlots![a]
                                                  ['startDateTime'],
                                              controller!.eventDetailsModel
                                                      .timeSlots![a]
                                                  ['endDateTime']),
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          controller!.eventDetailsModel
                                                  .timeSlots![a]['purpose'] ??
                                              ' ',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0XFF86839B)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 59,
                                    height: 20,
                                    child: ElevatedButton(
                                      onPressed: (int.parse(controller!.eventDetailsModel.timeSlots![a]['totalCount'].toString()) - int.parse(controller!.eventDetailsModel.timeSlots![a]['reservedCount'].toString())) > 0
                                          ? () {
                                              Get.dialog(BottomSignup(
                                                  controller: controller!,
                                                  status: controller!
                                                      .eventDetailsModel
                                                      .timeSlots![a]['status']
                                                      .toString(),
                                                  signUpItemUID: controller!
                                                      .eventDetailsModel
                                                      .timeSlots![a]['uid']
                                                      .toString(),
                                                  companyId: controller!
                                                      .eventDetailsModel
                                                      .timeSlots![a]
                                                          ['companyId']
                                                      .toString()));
                                            }
                                          : null,
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(0),
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          side: BorderSide(
                                              color: Color(0XFFC61236)),
                                        ),
                                      ),
                                      child: Container(
                                        height: 20,
                                        width: 59,
                                        child: Center(
                                          child: Text(
                                            'Sign Up',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Color(0XFFC61236),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                      (int.parse(controller!.eventDetailsModel.timeSlots![a]['totalCount'].toString()) - int.parse(controller!.eventDetailsModel.timeSlots![a]['reservedCount'].toString())) > 0 ? '${int.parse(controller!.eventDetailsModel.timeSlots![a]['totalCount'].toString()) - int.parse(controller!.eventDetailsModel.timeSlots![a]['reservedCount'].toString())} Slots Left' : 'Already Filled',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0XFFC61236),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PotluckItems extends StatefulWidget {
  const PotluckItems({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  _PotluckItemsState createState() => _PotluckItemsState();
}

class _PotluckItemsState extends State<PotluckItems> {
  int selectedIndex = -1; // Initialize selectedIndex to -1 (no selection)

  void selectItem(int index) {
    setState(() {
      if (selectedIndex == index) {
        // If the selected item is tapped again, deselect it
        selectedIndex = -1;
      } else {
        selectedIndex = index; // Select the tapped item
      }
    });
  }

  void _showBottomSheet(BuildContext context, status, signUPID, companyID) {
    Get.dialog(BottomSignup(
      controller: widget.controller,
      status: status,
      signUpItemUID: signUPID,
      companyId: companyID,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Container(
        height: 510,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Potluck Items',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 8,
              ),
              Text('Sign Up for an item Below', style: TextStyle(fontSize: 16)),
              SizedBox(
                height: 5,
              ),
              for (int a = 0;
                  a < widget.controller.eventDetailsModel.potluckItems!.length;
                  a++)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: () {
                      selectItem(a);
                      // Open the bottom sheet when an item is tapped
                      _showBottomSheet(
                        context,
                        widget.controller.eventDetailsModel
                            .potluckItems![a]['status']
                            .toString(),
                        widget.controller.eventDetailsModel
                            .potluckItems![a]['uid']
                            .toString(),
                        widget.controller.eventDetailsModel
                            .potluckItems![a]['companyId']
                            .toString(),
                      );
                    },
                    child: Container(
                      height: 132,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: a == selectedIndex
                                ? Colors.blue
                                : Color(0XFFC9C6E1)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Container(
                                    height: 98,
                                    width: 98,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(widget
                                              .controller
                                              .eventDetailsModel
                                              .potluckItems![a]['imageUrl']
                                              .toString())),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(widget.controller.eventDetailsModel
                                        .potluckItems![a]['itemName']
                                        .toString()),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                  width: 59,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border:
                                          Border.all(color: Color(0XFFC61236))),
                                  child: Center(
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0XFFC61236),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      (int.parse(widget
                                                  .controller
                                                  .eventDetailsModel
                                                  .potluckItems![a]['count']
                                                  .toString()) -
                                              int.parse(widget
                                                  .controller
                                                  .eventDetailsModel
                                                  .potluckItems![a]
                                                      ['claimedCount']
                                                  .toString()))
                                          .toString(),
                                      style: TextStyle(
                                          color: Color(0XFFC61236),
                                          fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: 2,
                                      width: 3,
                                    ),
                                    Text(
                                      'left',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0XFFC61236)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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

class BottomSignup extends StatefulWidget {
  final status;
  final signUpItemUID;
  final companyId;

  const BottomSignup({
    required this.controller,
    required this.status,
    required this.signUpItemUID,
    required this.companyId,
  });

  final EventDetailsController controller;

  @override
  State<BottomSignup> createState() => _BottomSignupState();
}

class _BottomSignupState extends State<BottomSignup> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController _userNameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  String userName = '';
  String email = '';
  String phoneNumber = '';
  Map<dynamic, dynamic> signUpItem = {};
  Map profileData = {};

  Future<void> getProfile() async {
    try {
      var response = await EventRepository().getProfile();
      final bodyData = response;
      setState(() {
        profileData = (bodyData);
      });
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }

  void _redirectToURL(String urlPath) async {
    // "https://funzippy.com/event/timeslot-pass/kuaRGCtzcV8/DvX9pujHvSl/fpjSPnoYi7N",
    final Uri url = Uri.parse('$urlPath');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> getSignUpItemDetails(eventUID, signUPItemID, status, companyId,
      email, phone, signUPName) async {
    try {
      var data = {
        "uid": signUPItemID, // signup Item ID
        "status": status,
        "companyId": int.parse(companyId),
        "emailAddress": email,
        "phoneNumber": phone,
        "signupName": signUPName
      };
      var response =
          await EventRepository().signUpItem(data: data, eventUID: eventUID);
      setState(() {
        signUpItem = response;
        print(response);
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
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: profileData.isNotEmpty
            ? Center(
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                      color: Color(0XFFF5F4F9),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 25.0, left: 8, right: 8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 310),
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              child: Image.asset('assets/svg/group_54.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 25),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                            // controller: _userNameEditingController,
                            initialValue:
                                '${profileData.isNotEmpty ? profileData["firstName"] : ""} ${profileData.isNotEmpty ? profileData["lastName"] : ""}',
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle: TextStyle(fontSize: 12),
                              prefixIcon: Icon(
                                Icons.person_2_outlined,
                                size: 14,
                                color: Color(0XFF5B46F4),
                              ),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              setState(() {
                                userName = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                            // controller: _emailEditingController,
                            initialValue:
                                '${profileData.isNotEmpty ? profileData["emailAddress"] : ""}',
                            decoration: InputDecoration(
                              // label: Text("HI"),
                              hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 12),
                              prefixIcon: Icon(
                                Icons.mail_outlined,
                                size: 14,
                                color: Color(0XFF5B46F4),
                              ),
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '+91',
                                      style: TextStyle(
                                          color: Color(0XFF5B46F4),
                                          fontSize: 10),
                                    ),
                                    Icon(
                                      Icons.expand_more,
                                      color: Color(0XFF86839B),
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                thickness: 2,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 269,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: TextFormField(
                                      // controller: phoneNumberController,
                                      initialValue:
                                          '${profileData.isNotEmpty ? profileData["phoneNumber"] : ""}',
                                      decoration: InputDecoration(
                                        hintText: 'Phone number',
                                        hintStyle: TextStyle(fontSize: 12),
                                        border: InputBorder.none,
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          phoneNumber = value;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 46,
                        ),
                        Container(
                          height: 40,
                          width: 336,
                          decoration: BoxDecoration(
                            color: Color(0XFFC61236),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () {
                              // print("userName");
                              // print(userName.isNotEmpty
                              //     ? userName
                              //     : '${profileData.isNotEmpty ? profileData["firstName"] : ""} ${profileData.isNotEmpty ? profileData["lastName"] : ""}');
                              // print(email.isNotEmpty
                              //     ? email
                              //     : '${profileData.isNotEmpty ? profileData["emailAddress"] : ""}');
                              // print(phoneNumber.isNotEmpty
                              //     ? phoneNumber
                              //     : '${profileData.isNotEmpty ? profileData["phoneNumber"] : ""}');
                              // print(widget.status);
                              // print(widget.companyId);
                              // print(widget.signUpItemUID);
                              // print(widget.controller.eventDetailsModel.uid);
                              if ((userName.isNotEmpty
                                          ? userName
                                          : '${profileData.isNotEmpty ? profileData["firstName"] : ""} ${profileData.isNotEmpty ? profileData["lastName"] : ""}')
                                      .isNotEmpty &&
                                  (email.isNotEmpty
                                          ? email
                                          : '${profileData.isNotEmpty ? profileData["emailAddress"] : ""}')
                                      .isNotEmpty &&
                                  (phoneNumber.isNotEmpty
                                          ? phoneNumber
                                          : '${profileData.isNotEmpty ? profileData["phoneNumber"] : ""}')
                                      .isNotEmpty) {
                                setState(() {
                                  getSignUpItemDetails(
                                      widget.controller.eventDetailsModel.uid,
                                      widget.signUpItemUID,
                                      widget.status,
                                      widget.companyId,
                                      email.isNotEmpty
                                          ? email
                                          : '${profileData.isNotEmpty ? profileData["emailAddress"] : ""}',
                                      phoneNumber.isNotEmpty
                                          ? phoneNumber
                                          : '${profileData.isNotEmpty ? profileData["phoneNumber"] : ""}',
                                      userName.isNotEmpty
                                          ? userName
                                          : '${profileData.isNotEmpty ? profileData["firstName"] : ""} ${profileData.isNotEmpty ? profileData["lastName"] : ""}');
                                });
                              }
                              Future.delayed(Duration(seconds: 5), () {
                                if (signUpItem.isNotEmpty) {
                                  signUpItem['statusDescription']
                                              .toString()
                                              .toLowerCase() ==
                                          "success"
                                      ? _redirectToURL(
                                          // "https://funzippy.com/event/timeslot-pass/kuaRGCtzcV8/DvX9pujHvSl/fpjSPnoYi7N",
                                          signUpItem['data']['signupPassLink'])
                                      : "";
                                  signUpItem.isNotEmpty
                                      ? showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title:
                                                  Text('Sign Up Item Status'),
                                              content: Text(
                                                  signUpItem['statusDescription']
                                                              .toString()
                                                              .toLowerCase() ==
                                                          "success"
                                                      ? "Success"
                                                      : "Failure"),
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
                                        )
                                      : SizedBox();
                                }
                              });
                            },
                            child: Text(
                              'Sign Up',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))
            : SizedBox());
  }
}
