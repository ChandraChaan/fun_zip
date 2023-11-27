import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fun_zippy/app/data/repository/event_repository.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:fun_zippy/app/widgets/error_snackbar.dart';
import 'package:intl/intl.dart';

import 'ticket_view_popup.dart';

class MyTickets extends StatefulWidget {
  final bool isSfald;

  const MyTickets({super.key, this.isSfald = false});

  @override
  State<MyTickets> createState() => _MyTicketsState();
}

class _MyTicketsState extends State<MyTickets> {
  List<Map<dynamic, dynamic>> my_Tickets = [];

  @override
  void initState() {
    fetchMyTickets();
    super.initState();
  }

  Future<void> fetchMyTickets() async {
    try {
      var response = await EventRepository().myTicket();

      setState(() {
        for (var item in response) {
          if (item is Map<dynamic, dynamic>) {
            my_Tickets.add(item);
          }
        }
      });
    } catch (e) {
      print('Error fetching tickets: $e');
      errorSnackbar(title: '$e', desc: '');
    }
  }

  dateTimeConverter(String dateTime) {
    DateFormat format = DateFormat('yyyy-MM-ddThh:mm:ss.SSSZ');
    DateTime dateTimeFormatted = format.parse(dateTime);

    DateFormat actualDateTime = DateFormat('MMM dd, yyyy');
    String finalDateTime = actualDateTime.format(dateTimeFormatted);
    return finalDateTime;
  }

  dateTimeConverterViewTicket(String dateTime) {
    DateFormat format = DateFormat('yyyy-MM-ddThh:mm:ss.SSSZ');
    DateTime dateTimeFormatted = format.parse(dateTime);

    DateFormat actualDateTime = DateFormat('MMM dd, yyyy | hh:mm a');
    String finalDateTime = actualDateTime.format(dateTimeFormatted);
    return finalDateTime;
  }

  @override
  Widget build(BuildContext context) {
    SizeGet().init(context);
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ForBuilderEvent(
          chil: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: TabBar(
                indicatorColor: Color(0XFF5B46F4),
                labelColor: Color(0XFF5B46F4),
                unselectedLabelColor: Colors.grey[600],
                tabs: <Widget>[
                  Tab(
                    child: Text('Upcoming'),
                  ),
                  Tab(
                    child: Text('Completed'),
                  ),
                  Tab(
                    child: Text('Canceled'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  // Content for Tab 1
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: my_Tickets.isEmpty
                        ? Center(child: CircularProgressIndicator())
                        : SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  for (int a = 0; a < my_Tickets.length; a++)
                                    ticketContent(
                                        // eventImageUrl:
                                        //     "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["eventImageUrl"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["eventImageUrl"] : ""}",
                                        // eventName:
                                        //     "${(my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["eventName"] : "Empty"}",
                                        // createdDate:
                                        //     "${(my_Tickets[a]["createdDate"]).isNotEmpty ? dateTimeConverter(my_Tickets[a]["createdDate"]) : ""}",
                                        name:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["name"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["name"] : ""}",
                                        quantity:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["quantity"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["quantity"] : ""}",
                                        seatNumber:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["tickets"][0]["seatNumber"]}" : "") : ""}",
                                        eventId:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["eventId"]}" : "") : ""}",
                                        actualPrice:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualPrice"]}" : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? "${my_Tickets[a]["sponsorLineItems"][0]["currency"]} ${my_Tickets[a]["sponsorLineItems"][0]["actualPrice"]}" : ""}",
                                        // qrCodeFilePath:
                                        //     "${(my_Tickets[a]["lineItems"]).isNotEmpty ? (my_Tickets[a]["lineItems"][0]["qrCodeFilePath"]) : "null"}",
                                        // currency:
                                        //     "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["currency"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["currency"] : "0.0"}",
                                        // amount:
                                        //     "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualPrice"]}" : "0.0") : ""}",
                                        actualLineItemTotal:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualLineItemTotal"]}" : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? "${my_Tickets[a]["sponsorLineItems"][0]["currency"]} ${my_Tickets[a]["sponsorLineItems"][0]["actualLineItemTotal"]}" : "0.0"}",
                                        groupDiscountPercentage:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["groupDiscountPercentage"]}" : "0.0"}",
                                        uid:
                                            "${(my_Tickets[a]["uid"]).isNotEmpty ? my_Tickets[a]["uid"] : ""}",
                                        status: "upcoming")
                                ]),
                          ),
                  ),
                  // Content for Tab 2
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: my_Tickets.isEmpty
                        ? Center(child: CircularProgressIndicator())
                        : SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  for (int a = 0; a < my_Tickets.length; a++)
                                    ticketContent(
                                        // eventImageUrl:
                                        //     "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["eventImageUrl"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["eventImageUrl"] : ""}",
                                        // eventName:
                                        //     "${(my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["eventName"] : "Empty"}",
                                        // createdDate:
                                        //     "${(my_Tickets[a]["createdDate"]).isNotEmpty ? dateTimeConverter(my_Tickets[a]["createdDate"]) : ""}",
                                        name:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["name"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["name"] : ""}",
                                        quantity:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["quantity"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["quantity"] : ""}",
                                        seatNumber:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["tickets"][0]["seatNumber"]}" : "") : ""}",
                                        eventId:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["eventId"]}" : "") : ""}",
                                        actualPrice:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualPrice"]}" : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? "${my_Tickets[a]["sponsorLineItems"][0]["currency"]} ${my_Tickets[a]["sponsorLineItems"][0]["actualPrice"]}" : ""}",
                                        // qrCodeFilePath:
                                        //     "${(my_Tickets[a]["lineItems"]).isNotEmpty ? (my_Tickets[a]["lineItems"][0]["qrCodeFilePath"]) : "null"}",
                                        // currency:
                                        //     "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["currency"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["currency"] : "0.0"}",
                                        // amount:
                                        //     "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualPrice"]}" : "0.0") : ""}",
                                        actualLineItemTotal:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualLineItemTotal"]}" : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? "${my_Tickets[a]["sponsorLineItems"][0]["currency"]} ${my_Tickets[a]["sponsorLineItems"][0]["actualLineItemTotal"]}" : "0.0"}",
                                        groupDiscountPercentage:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["groupDiscountPercentage"]}" : "0.0"}",
                                        uid:
                                            "${(my_Tickets[a]["uid"]).isNotEmpty ? my_Tickets[a]["uid"] : ""}",
                                        status: "completed")
                                ]),
                          ),
                  ),
                  // Content for Tab 3
                  Center(
                    child: Text('Canceled'),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget ForBuilderEvent({required Widget chil}) {
    return widget.isSfald
        ? CommonScafold(
            title: 'My Tickets',
            selectedIndex: 3,
            navChild: true,
            child: chil,
          )
        : chil;
  }
}

class ticketContent extends StatefulWidget {
  // final String eventImageUrl;
  // final String eventName;
  // final String createdDate;
  final String name;
  final String quantity;
  final String seatNumber;
  final String eventId;
  final String actualPrice;

  // final String qrCodeFilePath;
  // final String currency;
  final String actualLineItemTotal;
  final String groupDiscountPercentage;

  // final String amount;
  // final String location;
  final String uid;
  final String status;

  const ticketContent({
    // required this.eventImageUrl,
    // required this.eventName,
    // required this.createdDate,
    required this.name,
    required this.quantity,
    required this.seatNumber,
    required this.eventId,
    required this.actualPrice,
    // required this.qrCodeFilePath,
    // required this.currency,
    required this.actualLineItemTotal,
    required this.groupDiscountPercentage,
    // required this.amount,
    // required this.location,
    required this.uid,
    required this.status,
  });

  @override
  State<ticketContent> createState() => _ticketContentState();
}

class _ticketContentState extends State<ticketContent> {
  Map<dynamic, dynamic> tickets_details = {};

  Future<void> ticketDetails(String uid) async {
    try {
      var response = await EventRepository().ticketDetails(uid);
      final bodyData = response;
      setState(() {
        tickets_details.addAll(bodyData); // Wrap bodyData in a map
      });
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }

  dateTimeConverter(String dateTime) {
    DateFormat format = DateFormat('yyyy-MM-ddThh:mm:ss.SSSZ');
    DateTime dateTimeFormatted = format.parse(dateTime);

    DateFormat actualDateTime = DateFormat('MMM dd, yyyy');
    String finalDateTime = actualDateTime.format(dateTimeFormatted);
    return finalDateTime;
  }

  @override
  void initState() {
    ticketDetails(widget.uid);
    super.initState();
  }

  bool tapCondition(status) {
    if (status == "completed") {
      return (!DateTime.now().isBefore(DateTime.parse(
          "${tickets_details['data']['tickets'][0]['eventDateTime']}")));
    }
    if (status == "upcoming") {
      return DateTime.now().isBefore(DateTime.parse(
          "${tickets_details['data']['tickets'][0]['eventDateTime']}"));
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return tickets_details.isEmpty
        ? SizedBox()
        : SingleChildScrollView(
            child: Column(
            children: [
              if (tapCondition(widget.status))
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0XFFC9C6E1)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: Image.network(
                                  tickets_details.isNotEmpty
                                      ? tickets_details['data']['tickets'][0]
                                          ['eventImageUrl']
                                      : "",
                                  fit: BoxFit.fill,
                                  errorBuilder: (BuildContext context,
                                      Object error, StackTrace? stackTrace) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      // adjust the radius as needed
                                      // child: Image.asset('assets/svg/img.png',
                                      //     fit: BoxFit.cover, height: 210, width: 370),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  width: SizeGet.getProportionWidth(200),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        tickets_details.isNotEmpty
                                            ? tickets_details['data']['tickets']
                                                [0]['eventName']
                                            : "",
                                        // "The Routinel Hosted by Abish Mathew",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.date_range,
                                            size: 14,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text10(tickets_details.isNotEmpty
                                              ? dateTimeConverter(
                                                  tickets_details['data']
                                                          ['tickets'][0]
                                                      ['eventDateTime'])
                                              : "")
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Color(0XFF86839B),
                                            size: 14,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Text(
                                              tickets_details.isNotEmpty
                                                  ? ("${tickets_details['data']['tickets'][0]['address']['address1']} "
                                                      "${tickets_details['data']['tickets'][0]['address']['city']} "
                                                      "${tickets_details['data']['tickets'][0]['address']['postalCode']} "
                                                      "${tickets_details['data']['tickets'][0]['address']['state']}")
                                                  : "",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                              maxLines: 3,
                                              // "Hi-tech City, Hyderabad",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DottedLine(
                            direction: Axis.horizontal,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashColor: AppColors.grey,
                            dashGapLength: 6,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10(
                                    "Ticket Type",
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    // "${(my_Tickets[a]["createdDate"]).isNotEmpty ? my_Tickets[a]["createdDate"] : ""}",
                                    widget.name,
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              DottedLine(
                                direction: Axis.vertical,
                                lineLength: 60,
                                lineThickness: 1.0,
                                dashColor: AppColors.grey,
                                dashGapLength: 6,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text10(
                                    "Tickets",
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text12(
                                    widget.quantity,
                                    // "03",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                                height: 10,
                              ),
                              DottedLine(
                                direction: Axis.vertical,
                                lineLength: 60,
                                lineThickness: 1.0,
                                dashColor: AppColors.grey,
                                dashGapLength: 6,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10(
                                    "Seat Numbers",
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(children: [
                                    Image.asset('assets/svg/seat.png'),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text12(
                                      widget.seatNumber,
                                      // "J21, J22, J23",
                                    ),
                                  ]),
                                ],
                              )
                            ],
                          ),
                          DottedLine(
                            direction: Axis.horizontal,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashColor: AppColors.grey,
                            dashGapLength: 6,
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text10(
                                      "Booking id",
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      widget.eventId,
                                      // "TRHAM521452671",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text10(
                                      "Amount",
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      tickets_details.isNotEmpty
                                          ? "${tickets_details['data']['tickets'][0]['currency']} ${tickets_details['data']['tickets'][0]['salePrice']}"
                                          : "",
                                      // "\$ 320.50",
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          DottedLine(
                            direction: Axis.horizontal,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashColor: AppColors.grey,
                            dashGapLength: 6,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TicketViewPopUp(
                                                qrcode: tickets_details
                                                        .isNotEmpty
                                                    ? "https://funzippy.com" +
                                                        "${tickets_details['data']['tickets'][0]['qrCodeFilePath']}"
                                                    : "",
                                                imageUrl: tickets_details
                                                        .isNotEmpty
                                                    ? tickets_details['data']
                                                            ['tickets'][0]
                                                        ['eventImageUrl']
                                                    : "",
                                                eventName: tickets_details
                                                        .isNotEmpty
                                                    ? tickets_details['data']
                                                            ['tickets'][0]
                                                        ['eventName']
                                                    : "",
                                                dateTime: tickets_details
                                                        .isNotEmpty
                                                    ? dateTimeConverter(
                                                        tickets_details['data']
                                                                ['tickets'][0]
                                                            ['eventDateTime'])
                                                    : "",
                                                location: tickets_details
                                                        .isNotEmpty
                                                    ? ("${tickets_details['data']['tickets'][0]['address']['address1']} "
                                                        "${tickets_details['data']['tickets'][0]['address']['city']} "
                                                        "${tickets_details['data']['tickets'][0]['address']['postalCode']} "
                                                        "${tickets_details['data']['tickets'][0]['address']['state']}")
                                                    : "",
                                                ticketType: widget.name,
                                                tickets: widget.quantity,
                                                seatNumber: widget.seatNumber,
                                                bookingId: widget.eventId,
                                                amount: tickets_details
                                                        .isNotEmpty
                                                    ? "${tickets_details['data']['tickets'][0]['currency']} ${tickets_details['data']['tickets'][0]['salePrice']}"
                                                    : "",
                                                // actualPrice: widget.actualPrice,
                                                // totalAmount: widget.actualLineItemTotal,
                                                groupDiscountPercentage: widget
                                                    .groupDiscountPercentage,
                                                // currency: widget.currency,
                                                uid: widget.uid,
                                              )));
                                },
                                child: Row(
                                  children: [
                                    Image.asset('assets/svg/ticket.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "View Ticket",
                                      style: TextStyle(
                                          color: Color(0XFF5B46F4),
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              DottedLine(
                                direction: Axis.vertical,
                                lineLength: 55,
                                lineThickness: 1.0,
                                dashColor: AppColors.grey,
                                dashGapLength: 6,
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/svg/phone.png'),
                                  Text10(
                                    "Contact support",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ));
  }
}
