import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fun_zippy/app/data/repository/event_repository.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:fun_zippy/app/modules/funzipp/ticket_view_popup.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:fun_zippy/app/widgets/error_snackbar.dart';
import 'package:intl/intl.dart';

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
                                    if ((my_Tickets[a]["createdDate"]).toString() !=
                                            'null' &&
                                        my_Tickets[a]["createdDate"]
                                            .toString()
                                            .isNotEmpty)
                                      if (DateTime.now().isBefore(DateTime.parse(
                                          "${my_Tickets[a]["createdDate"]}")))
                                        MyTicketsDetails(
                                            eventImageUrl:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["eventImageUrl"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["eventImageUrl"] : ""}",
                                            eventName:
                                            "${(my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["eventName"] : "Empty"}",
                                            createdDate:
                                            "${(my_Tickets[a]["createdDate"]).isNotEmpty ? dateTimeConverter(my_Tickets[a]["createdDate"]) : ""}",
                                            type:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["type"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["type"] : ""}",
                                            quantity:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["quantity"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["quantity"] : ""}",
                                            seatNumber:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["tickets"][0]["seatNumber"]}" : "") : ""}",
                                            eventId:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["eventId"]}" : "") : ""}",
                                            actualPrice:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualPrice"]}": (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? "${my_Tickets[a]["sponsorLineItems"][0]["currency"]} ${my_Tickets[a]["sponsorLineItems"][0]["actualPrice"]}" : ""}",
                                            qrCodeFilePath:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? (my_Tickets[a]["lineItems"][0]["qrCodeFilePath"]) : "null"}",
                                            currency:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["currency"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["currency"] :  "0.0"}",
                                            // amount:
                                            //     "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualPrice"]}" : "0.0") : ""}",
                                            actualLineItemTotal:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualLineItemTotal"]}" :(my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? "${my_Tickets[a]["sponsorLineItems"][0]["currency"]} ${my_Tickets[a]["sponsorLineItems"][0]["actualLineItemTotal"]}" :  "0.0"}",
                                            groupDiscountPercentage:
                                            "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["groupDiscountPercentage"]}" : "0.0"}",
                                            // ToDo change location
                                            location: "Hi-tech City, Hyderabad")
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
                              if ((my_Tickets[a]["createdDate"]).toString() !=
                                  'null' &&
                                  my_Tickets[a]["createdDate"]
                                      .toString()
                                      .isNotEmpty)
                                if (!DateTime.now().isBefore(DateTime.parse(
                                    "${my_Tickets[a]["createdDate"]}")))
                                  MyTicketsDetails(
                                      eventImageUrl:
                                      "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["eventImageUrl"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["eventImageUrl"] : ""}",
                                      eventName:
                                      "${(my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["eventName"] : "Empty"}",
                                      createdDate:
                                      "${(my_Tickets[a]["createdDate"]).isNotEmpty ? dateTimeConverter(my_Tickets[a]["createdDate"]) : ""}",
                                      type:
                                      "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["type"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["type"] : ""}",
                                      quantity:
                                      "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["quantity"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["quantity"] : ""}",
                                      seatNumber:
                                      "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["tickets"][0]["seatNumber"]}" : "") : ""}",
                                      eventId:
                                      "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["eventId"]}" : "") : ""}",
                                      actualPrice:
                                      "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualPrice"]}": (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? "${my_Tickets[a]["sponsorLineItems"][0]["currency"]} ${my_Tickets[a]["sponsorLineItems"][0]["actualPrice"]}" : ""}",
                                      qrCodeFilePath:
                                      "${(my_Tickets[a]["lineItems"]).isNotEmpty ? (my_Tickets[a]["lineItems"][0]["qrCodeFilePath"]) : "null"}",
                                      currency:
                                      "${(my_Tickets[a]["lineItems"]).isNotEmpty ? my_Tickets[a]["lineItems"][0]["currency"] : (my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? my_Tickets[a]["sponsorLineItems"][0]["currency"] :  "0.0"}",
                                      // amount:
                                      //     "${(my_Tickets[a]["lineItems"]).isNotEmpty ? ((my_Tickets[a]["lineItems"][0]["tickets"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualPrice"]}" : "0.0") : ""}",
                                      actualLineItemTotal:
                                      "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["actualLineItemTotal"]}" :(my_Tickets[a]["sponsorLineItems"]).isNotEmpty ? "${my_Tickets[a]["sponsorLineItems"][0]["currency"]} ${my_Tickets[a]["sponsorLineItems"][0]["actualLineItemTotal"]}" :  "0.0"}",
                                      groupDiscountPercentage:
                                      "${(my_Tickets[a]["lineItems"]).isNotEmpty ? "${my_Tickets[a]["lineItems"][0]["currency"]} ${my_Tickets[a]["lineItems"][0]["groupDiscountPercentage"]}" : "0.0"}",
                                      // ToDo change location
                                      location: "Hi-tech City, Hyderabad")
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

  Widget MyTicketsDetails({
    required String eventImageUrl,
    required String eventName,
    required String createdDate,
    required String type,
    required String quantity,
    required String seatNumber,
    required String eventId,
    required String actualPrice,
    required String qrCodeFilePath,
    required String currency,
    required String actualLineItemTotal,
    required String groupDiscountPercentage,
    // required String amount,
    required String location,
  }) {
    return Padding(
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
                      eventImageUrl,
                      // "",
                      fit: BoxFit.fill,
                      errorBuilder: (BuildContext context, Object error,
                          StackTrace? stackTrace) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          // adjust the radius as needed
                          child: Image.asset('assets/svg/img.png',
                              fit: BoxFit.cover, height: 210, width: 370),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            eventName,
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
                              Text10(
                                createdDate,
                              )
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
                              Text10(
                                location,
                                // "Aug 25,2023"
                              )
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
                        type,
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
                        quantity,
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
                          seatNumber,
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
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
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
                          eventId,
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
                          actualPrice,
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
                                  qrcode: qrCodeFilePath,
                                  imageUrl: eventImageUrl,
                                  eventName: eventName,
                                  dateTime: createdDate,
                                  location: location,
                                  ticketType: type,
                                  tickets: quantity,
                                  seatNumber: seatNumber,
                                  bookingId: eventId,
                                  amount: actualPrice,
                                  actualPrice: actualPrice,
                                  totalAmount: actualLineItemTotal,
                                  groupDiscountPercentage:
                                      groupDiscountPercentage,
                                  currency: currency)));
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/svg/ticket.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "View Ticket",
                          style:
                              TextStyle(color: Color(0XFF5B46F4), fontSize: 10),
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
