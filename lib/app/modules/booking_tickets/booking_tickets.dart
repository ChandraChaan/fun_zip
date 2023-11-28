import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fun_zippy/app/data/repository/event_repository.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:fun_zippy/app/widgets/error_snackbar.dart';

import '../event_details/controllers/event_details_controller.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/svg/group_78.png'),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 21),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    'Details',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 54,
                  width: 374,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
          Container(
            height: 158,
            width: 374,
            decoration: BoxDecoration(
              color: Color(0XFF4287F5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 26),
              child: Column(
                children: [
                  Text(
                    'The Great Gatsby Party : Hyderabad',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.location_on)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class for bookings
class BookTickets extends StatefulWidget {
  const BookTickets({
    super.key,
    this.controller,
  });

  final EventDetailsController? controller;

  @override
  State<BookTickets> createState() => _BookTicketsState();
}

class _BookTicketsState extends State<BookTickets> {
  //final Price price; // You need to define a Price class to hold the price and quantity
  String defaultCountryCode = '+91';
  List<String> countryCodes = ['+91', '+92', '+93', '+94'];
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController _userNameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  String userName = '';
  String email = '';
  String phoneNumber = '';

  bool accept = false;
  bool decline = false;
  bool maybe = false;

  double productPrice = 1; //quantity

  Map<dynamic, dynamic> buy_tickets_details = {};

  Future<void> buyTickets(productPrice, userName, email, phoneNumber, eventId,
      eventUID, visibility, summaryPic) async {
    try {
      var data = {
        "lineItems": [
          {
            "quantity": "$productPrice",
            "eventId": "$eventId",
            "eventUid": "$eventUID",
            "visibility": "$visibility",
            "eventImageUrl": "$summaryPic",
            "categoryUid": "ZejFZSEbGY9",
            "attendeeType": "12-18",
            "currency": "\$",
            "salePrice": '$productPrice',
            "actualPrice": 5,
            "groupDiscountCount": 0,
            "groupDiscountPercentage": 0,
            "groupDiscountPricePerTicket": 0
          }
        ],
        "firstName": "$userName",
        "emailAddress": "$email",
        "phoneNumber": "$phoneNumber"
      };
      var response = await EventRepository().buyTickets(data);
      print("buy Tickets : $response");
      final bodyData = response;
      setState(() {
        buy_tickets_details.addAll(bodyData); // Wrap bodyData in a map
      });
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }

  @override
  void initState() {
    buyTickets;
    super.initState();
  }

  void increasePrice() {
    setState(() {
      productPrice += 1;
    });
  }

  void decreasePrice() {
    if (productPrice > 1) {
      setState(() {
        productPrice -= 1;
      });
    }
  }

  double productPrices = 1; //quantity
  double productQuantityten = 1;

  void increasePrices() {
    setState(() {
      productPrices += 1;
    });
  }

  void decreasePrices() {
    if (productPrices > 1) {
      setState(() {
        productPrices -= 1;
      });
    }
  }

  @override
  void dispose() {
    _userNameEditingController.dispose();
    _emailEditingController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int b = widget.controller?.eventDetailsModel.ticketCategories?.length ?? 0;
    return Scaffold(
//      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 680,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'Tickets',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        for (int a = 0; a < b; a++) ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.controller!.eventDetailsModel
                                      .ticketCategories![a].name ??
                                  ' '),
                              Row(
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        color: Color(0XFFE8E7F0),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: InkWell(
                                        onTap: a.isEven
                                            ? decreasePrice
                                            : decreasePrices,
                                        child: Icon(Icons.remove, size: 14)),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                      '${a.isEven ? productPrice : productPrices}'),
                                  SizedBox(width: 4),
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        color: Color(0XFFE8E7F0),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: InkWell(
                                        onTap: a.isEven
                                            ? increasePrice
                                            : increasePrices,
                                        child: Icon(Icons.add, size: 14)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Text(
                            widget.controller!.eventDetailsModel
                                    .ticketCategories![a].inviteMessage ??
                                ' ',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 7),
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Color(0XFF5B46F4),
                                size: 17,
                              ),
                              Text(
                                  widget.controller!.eventDetailsModel
                                      .ticketCategories![a].actualPrice
                                      .toString(),
                                  style: TextStyle(color: Color(0XFF5B46F4)))
                            ],
                          ),
                        ],
                        SizedBox(
                          height: 21,
                        ),
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
                              height: 35,
                              child: TextFormField(
                                controller: _userNameEditingController,
                                decoration: InputDecoration(
                                    hintText: 'Name',
                                    hintStyle: TextStyle(fontSize: 12),
                                    filled: true,
                                    fillColor: Color(0XFFF5F4F9),
                                    border: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20))),
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
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              height: 35,
                              child: TextFormField(
                                controller: _emailEditingController,
                                decoration: InputDecoration(
                                  hintText: 'Enter your email',
                                  hintStyle: TextStyle(fontSize: 12),
                                  filled: true,
                                  fillColor: Color(0XFFF5F4F9),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Email is required';
                                  } else if (!isValidEmail(value)) {
                                    return 'Enter a valid email address';
                                  }
                                  return null;
                                },
                              ),
                            ),

                            SizedBox(
                              height: 14,
                            ),
                            // phone number created common widget
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                        margin:
                                            const EdgeInsets.only(right: 2.0),
                                        decoration: BoxDecoration(
                                            color: Color(0XFFF5F4F9),
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
                                              child: Text10(
                                                code,
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
                                            )),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          controller: phoneNumberController,
                                          decoration: InputDecoration(
                                              //Todo
                                              hintText: 'Phone Number',
                                              hintStyle: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0XFF5E5A80)),
                                              filled: true,
                                              fillColor: Color(0XFFF5F4F9),
                                              border: InputBorder.none,
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                  )),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                  ))),
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
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            if (userName.isNotEmpty &&
                                email.isNotEmpty &&
                                phoneNumber.isNotEmpty &&
                                widget.controller?.eventDetailsModel.id
                                    .isNotEmpty &&
                                widget.controller?.eventDetailsModel.uid
                                    .isNotEmpty &&
                                widget.controller?.eventDetailsModel.visibility
                                    .isNotEmpty &&
                                widget.controller?.eventDetailsModel
                                    .summaryPicture.isNotEmpty) {
                              setState(() {
                                buyTickets(
                                    productPrice.toInt().toString(),
                                    userName,
                                    email,
                                    phoneNumber,
                                    widget.controller?.eventDetailsModel.id,
                                    widget.controller?.eventDetailsModel.uid,
                                    widget.controller?.eventDetailsModel
                                        .visibility,
                                    widget.controller?.eventDetailsModel
                                        .summaryPicture);
                              });
                            }
                            if (buy_tickets_details.isNotEmpty) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Booking Ticket Status'),
                                      content: Text(buy_tickets_details[
                                          'statusDescription']),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    );
                                  });
                            }
                          },
                          child: Container(
                            height: 35,
                            width: double.infinity,
                            child: Center(
                                child: Text(
                              'Checkout',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )),
                            decoration: BoxDecoration(
                                color: Color(0XFFC61236),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isValidEmail(String email) {
    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegExp.hasMatch(email);
  }
}
