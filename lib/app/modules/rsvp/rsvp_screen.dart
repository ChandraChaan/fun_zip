import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../../data/repository/event_repository.dart';
import '../../widgets/error_snackbar.dart';
import '../event_details/controllers/event_details_controller.dart';

class RsvpScreen extends StatefulWidget {
  const RsvpScreen({
    super.key,
    this.controller,
  });

  final EventDetailsController? controller;

  State<RsvpScreen> createState() => _RsvpScreenState();
}

class _RsvpScreenState extends State<RsvpScreen> {
  String defaultCountryCode = '+91';
  List<String> countryCodes = ['+91', '+92', '+93', '+94'];
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController _userNameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _commentEditingController = TextEditingController();
  String userName = '';
  String email = '';
  String phoneNumber = '';
  String comment = '';
  String rsvpStatus = '';

  bool accept = false;
  bool decline = false;
  bool maybe = false;

  int adults = 0;

  void increaseAdults() {
    setState(() {
      adults += 1;
    });
  }

  void decreaseAdults() {
    if (adults > 0) {
      setState(() {
        adults -= 1;
      });
    }
  }

  int kids = 0;

  void increaseKids() {
    setState(() {
      kids += 1;
    });
  }

  void decreaseKids() {
    if (kids > 0) {
      setState(() {
        kids -= 1;
      });
    }
  }

  Future<void> rsvpCall(name, email, phoneNumber, comment, rsvpStatus, adult,
      kids, eventUid, currentDateTime) async {
    try {
      var response = await EventRepository().rsvpCall(data: {
        "firstName": "$name",
        "emailAddress": "$email",
        "phoneNumber": "$phoneNumber",
        "rsvpAdultCount": "$adult",
        "rsvpKidCount": "$kids",
        "rsvpStatus": "$rsvpStatus", // Accept - A, Decline - D, Maybe - M
        "rsvpComment": "$comment",
        "eventId": "$eventUid",
        "rsvpDate": "$currentDateTime",
      });
      print(response.toString());
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }

  // @override
  // void initState() {
  //   rsvpCall();
  //   super.initState();
  // }
  bool _showPopup = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
         // height: 680,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  'RSVP',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Adults',
                      style: TextStyle(fontSize: 11),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              color: Color(0XFFE8E7F0),
                              borderRadius: BorderRadius.circular(25)),
                          child: InkWell(
                              onTap: decreaseAdults,
                              child: Icon(Icons.remove, size: 14)),
                        ),
                        SizedBox(width: 4),
                        Text('${adults}'),
                        SizedBox(width: 4),
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              color: Color(0XFFE8E7F0),
                              borderRadius: BorderRadius.circular(25)),
                          child: InkWell(
                              onTap: increaseAdults,
                              child: Icon(Icons.add, size: 14)),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      color: Color(0XFF5B46F4),
                      size: 17,
                    ),
                    Text(
                      '$adults',
                      style: TextStyle(color: Color(0XFF5B46F4)),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kids',
                      style: TextStyle(fontSize: 11),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              color: Color(0XFFE8E7F0),
                              borderRadius: BorderRadius.circular(25)),
                          child: InkWell(
                              onTap: decreaseKids,
                              child: Icon(Icons.remove, size: 14)),
                        ),
                        SizedBox(width: 4),
                        Text('$kids'),
                        SizedBox(width: 4),
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              color: Color(0XFFE8E7F0),
                              borderRadius: BorderRadius.circular(25)),
                          child: InkWell(
                              onTap: increaseKids,
                              child: Icon(Icons.add, size: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      color: Color(0XFF5B46F4),
                      size: 17,
                    ),
                    Text(
                      '$kids',
                      style: TextStyle(color: Color(0XFF5B46F4)),
                    ),
                  ],
                ),
                SizedBox(height: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(fontSize: 11),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 35,
                      child: TextFormField(
                        controller: _userNameEditingController,
                        decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(fontSize: 10),
                            filled: true,
                            fillColor: Color(0XFFF5F4F9),
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20))),
                        onChanged: (value) {
                          setState(() {
                            userName = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(fontSize: 11),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    // first container sathya
                    Container(
                      height: 35,
                      child: TextFormField(
                        controller: _emailEditingController,
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(fontSize: 10),
                            filled: true,
                            fillColor: Color(0XFFF5F4F9),
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20))),
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 11),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                          child: Container(
                            height: 35,
                            // reduce the line
                            margin: const EdgeInsets.only(right: 2.0),
                            decoration: BoxDecoration(
                                color: Color(0XFFF5F4F9),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                )),
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: DropdownButton<String>(
                              value: defaultCountryCode,
                              onChanged: (newValue) {
                                setState(() {
                                  defaultCountryCode = newValue!;
                                });
                              },
                              items: countryCodes.map((code) {
                                return DropdownMenuItem<String>(
                                  value: code,
                                  child: Text(
                                    code,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                );
                              }).toList(),
                              underline: Container(
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: Color(0XFFF5F4F9),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              controller: phoneNumberController,
                              decoration: InputDecoration(
                                hintText: "Phone Number",
                                hintStyle: TextStyle(fontSize: 10),
                                filled: true,
                                fillColor: Color(0XFFF5F4F9),
                                border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  phoneNumber = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    'Terms & Conditions',
                    style: TextStyle(fontSize: 12, color: Colors.red.shade400),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              accept = !accept;
                              decline = false;
                              maybe = false;
                              if (accept)
                                rsvpStatus = 'A';
                              else
                                rsvpStatus = '';
                            });
                            // Handle the click action for 'Accept' checkbox here
                          },
                          child: Icon(
                            accept
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            color: accept ? Color(0XFF5B46F4) : Colors.grey,
                          ),
                        ),
                        Text(
                          'Accept',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              decline = !decline;
                              accept = false;
                              maybe = false;
                              if (decline)
                                rsvpStatus = 'D';
                              else
                                rsvpStatus = '';
                            });
                            // Handle the click action for 'Decline' checkbox here
                          },
                          child: Icon(
                            decline
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            color: decline ? Color(0XFF5B46F4) : Colors.grey,
                          ),
                        ),
                        Text(
                          'Decline',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              maybe = !maybe;
                              accept = false;
                              decline = false;
                              if (maybe)
                                rsvpStatus = 'M';
                              else
                                rsvpStatus = '';
                            });
                            // Handle the click action for 'Maybe' checkbox here
                          },
                          child: Icon(
                            maybe
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            color: maybe ? Color(0XFF5B46F4) : Colors.grey,
                          ),
                        ),
                        Text(
                          'Maybe',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  height: 115,
                  decoration: BoxDecoration(
                    color: Color(0XFFF5F4F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _commentEditingController,
                      maxLines: 10,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Comment",
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                      onChanged: (value) {
                        setState(() {
                          comment = value;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    print(userName);
                    print(email);
                    print(phoneNumber);
                    print(comment);
                    print(adults);
                    print(kids);
                    print(rsvpStatus);
                    print(widget.controller?.eventDetailsModel.uid);
                    if ((userName.isNotEmpty &&
                            email.isNotEmpty &&
                            phoneNumber.isNotEmpty &&
                            comment.isNotEmpty) &&
                        (adults > 0 || kids > 0) &&
                        rsvpStatus.isNotEmpty &&
                        (widget.controller?.eventDetailsModel.uid).isNotEmpty) {
                      rsvpCall(
                          userName,
                          email,
                          phoneNumber,
                          comment,
                          rsvpStatus,
                          adults,
                          kids,
                          widget.controller?.eventDetailsModel.uid,
                          DateFormat('yyyy-MM-ddTHH:mm:ss.SSSZ')
                              .format(DateTime.now())
                              .toString());
                      _showPopupMenu(context);
                    }
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      'RSVP',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                    decoration: BoxDecoration(
                        color: Color(0XFFC61236),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final Offset center = overlay.size.center(Offset.zero);

    showMenu<String>(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromCenter(center: center, width: 280, height: 100),
        Offset.zero & overlay.size,
      ),
      items: <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'Item 1',
          child: Center(
            child: Container(
                height: 300,
                width: 320,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Thanks for RSVP.'),
                    SizedBox(height: 25,),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 35,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0XFFC61236),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                              'Done!',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    )
                  ],
                )),
          ),
        ),
      ],
    ).then((value) {
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          _showPopup = false;
        });
      });
    });
  }
}
