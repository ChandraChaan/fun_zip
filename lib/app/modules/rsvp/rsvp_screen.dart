import 'package:flutter/material.dart';

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

  bool accept = false;
  bool decline = false;
  bool maybe = false;

  double productPriceOne = 1; //quantity
  double productQuantityOne = 1;

  void increasePriceOne() {
    setState(() {
      productQuantityOne += 1;
    });
  }

  void decreasePriceOne() {
    if (productQuantityOne > 1) {
      setState(() {
        productQuantityOne -= 1;
      });
    }
  }

  double productPricesThree = 1; //quantity
  double productQuantityThree = 1;

  void increasePriceThree() {
    setState(() {
      productQuantityThree += 1;
    });
  }

  void decreasePriceThree() {
    if (productQuantityThree > 1) {
      setState(() {
        productQuantityThree -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 680,
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
                Text('Adults'),
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
                          onTap: decreasePriceOne,
                          child: Icon(Icons.remove, size: 14)),
                    ),
                    SizedBox(width: 4),
                    Text('${productQuantityOne}'),
                    SizedBox(width: 4),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Color(0XFFE8E7F0),
                          borderRadius: BorderRadius.circular(25)),
                      child: InkWell(
                          onTap: increasePriceOne,
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
                  '${productQuantityThree}',
                  style: TextStyle(color: Color(0XFF5B46F4)),
                ),
              ],
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Kids'),
                SizedBox(
                  width: 203,
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
                          onTap: decreasePriceThree,
                          child: Icon(Icons.remove, size: 14)),
                    ),
                    SizedBox(width: 4),
                    Text('${productPricesThree}'),
                    SizedBox(width: 4),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Color(0XFFE8E7F0),
                          borderRadius: BorderRadius.circular(25)),
                      child: InkWell(
                          onTap: increasePriceThree,
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
                  '${productPricesThree}',
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
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(fontSize: 12),
                        filled: true,
                        fillColor: Color(0XFFE8E7F0),
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Email',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 7,
                ),
                // first container sathya
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(fontSize: 12),
                        filled: true,
                        fillColor: Color(0XFFE8E7F0),
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                      child: Container(
                        height: 40,
                        // reduce the line
                        margin: const EdgeInsets.only(right: 2.0),
                        decoration: BoxDecoration(
                            color: Color(0XFFE8E7F0),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            )),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12),
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
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0XFFE8E7F0),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(fontSize: 12),
                              filled: true,
                              fillColor: Color(0XFFE8E7F0),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight:
                                    Radius.circular(20),
                                  )),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight:
                                    Radius.circular(20),
                                  ))),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8,left: 15),
              child: Text(
                'Terms & Conditions',
                style:
                TextStyle(fontSize: 14,color: Colors.red.shade400),
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
                        });
                        // Handle the click action for 'Accept' checkbox here
                      },
                      child: Icon(
                        accept
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        //  color: Color(0XFF5B46F4)
                      ),
                    ),
                    Text('Accept'),
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
                        });
                        // Handle the click action for 'Decline' checkbox here
                      },
                      child: Icon(decline
                          ? Icons.check_box
                          : Icons.check_box_outline_blank),
                    ),
                    Text('Decline'),
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
                        });
                        // Handle the click action for 'Maybe' checkbox here
                      },
                      child: Icon(maybe
                          ? Icons.check_box
                          : Icons.check_box_outline_blank),
                    ),
                    Text('Maybe'),
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
                color: Color(0XFFE8E7F0),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Comment',
                    hintStyle: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                width: double.infinity,
                child: Center(
                    child: Text(
                      'RSVP',
                      style: TextStyle(
                          color: Colors.white, fontSize: 12),
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
    );
  }
}
