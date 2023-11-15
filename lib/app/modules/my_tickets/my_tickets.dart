import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';

class MyTickets extends StatefulWidget {
  const MyTickets({super.key});

  @override
  State<MyTickets> createState() => _MyTicketsState();
}

class _MyTicketsState extends State<MyTickets> {
  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          for (int a = 1; a <= 5; a++)
          Container(
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
                        child: Image.asset("assets/svg/umbrella.svg"),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Text(
                              "The Routinel Hosted by Abish Mathew",
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text10("Hyderrabad")
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
                                Text10("Aug 25,2023")
                              ],
                            ),
                          ],
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
                            "Diamond",
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
                          Text(
                            "03",
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
                            Text10(
                              "J21, J22, J23",
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
                  Row(
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
                            "TRHAM521452671",
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
                            "\$ 320.50",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 1,
                      )
                    ],
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset('assets/svg/ticket.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "View Ticket",
                              style: TextStyle(
                                  color: Color(0XFF5B46F4), fontSize: 10),
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
        ]),
      ),
    );;
  }
}



