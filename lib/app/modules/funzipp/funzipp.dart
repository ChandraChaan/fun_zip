import 'package:flutter/material.dart';
import 'package:fun_zippy/app/config/images_links.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../data/repository/event_repository.dart';
import '../../widgets/error_snackbar.dart';
import '../common_data/common_dottedline_veertical.dart';

class FunZippy extends StatefulWidget {
  final double diameter;

  const FunZippy({super.key, this.diameter = 50});

  @override
  State<FunZippy> createState() => _FunZippyState();
}

class _FunZippyState extends State<FunZippy> {
  Map tickets = {};

  Future<void> ticketDetails() async {
    try {
      var response = await EventRepository().ticketDetails();
      print(response.toString());
      print('Sathya tickets');
      final bodyData = response;
      setState(() {
        tickets = (bodyData); // Wrap bodyData in a list
      });
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }

  @override
  void initState() {
    ticketDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.deepBule,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: AppColors.deepWhite,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.deepBule,
                        child: Icon(
                          Icons.close,
                          color: AppColors.deepWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 130,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(assetSplash),
                                fit: BoxFit.fill),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              bottom: 10.0, left: 10.0, right: 10.0),
                          child: CommonDottedHorizontal(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 10.0, right: 10.0, bottom: 5.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Image.asset(
                                    "'${tickets.isNotEmpty ? tickets["eventImageUrl"] : ""}'"),
                              ),
                              5.width,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // destination,
                                    "The Routinel Hosted by Abish Mathew",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_today,
                                        color: Color((0XFF85829B)),
                                        size: 14,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text10(
                                        "Aug 25, 2023 | 8:30PM",
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on_outlined,
                                        color: Color(0XFF85829B),
                                        size: 14,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text10(
                                        "Hi-tech City, Hyderabad",
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // height: SizeGet.getProportionHeight(812 / 27),
                                // width: SizeGet.getProportionWidth(375 / 22),
                                decoration: const BoxDecoration(
                                  color: AppColors.deepBule,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                  ),
                                ),
                              ),
                              SizedBox(
                               // width: SizeGet.getProportionWidth(375 / 1.3),
                                child: CommonDottedHorizontal(),
                              ),
                              Container(
                                height: SizeGet.getProportionHeight(812 / 27),
                                width: SizeGet.getProportionWidth(375 / 22),
                                decoration: const BoxDecoration(
                                  color: AppColors.deepBule,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(100),
                                    bottomLeft: Radius.circular(100),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 1,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text10(
                                  "Ticket Type",
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Diamond",
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            CommonDottedVertical(),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text10(
                                  "Tickets",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text("03", style: TextStyle(fontSize: 14))
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                              height: 5,
                            ),
                            CommonDottedVertical(),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text10(
                                  "Seat Numbers",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(
                                      Icons.event_seat_outlined,
                                      size: 16,
                                    ),
                                    3.width,
                                    Text(
                                      "J21, J22, J23",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: SizeGet.getProportionHeight(812 / 27),
                                width: SizeGet.getProportionWidth(375 / 22),
                                decoration: const BoxDecoration(
                                  color: AppColors.deepBule,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: SizeGet.getProportionWidth(375 / 1.3),
                                child: CommonDottedHorizontal(),
                              ),
                              Container(
                                height: SizeGet.getProportionHeight(812 / 27),
                                width: SizeGet.getProportionWidth(375 / 22),
                                decoration: const BoxDecoration(
                                  color: AppColors.deepBule,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(100),
                                    bottomLeft: Radius.circular(100),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text10(
                                    "Booking id",
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    // bookingId,
                                    "TRHAM521452671",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text10(
                                    "Amount",
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    // amount,
                                    "\$ 320.50",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Center(
                            child: Container(
                              height: SizeGet.getProportionHeight(812 / 5),
                              width: SizeGet.getProportionWidth(375 / 2.8),
                              decoration: const BoxDecoration(
                                color: AppColors.deepWhite,
                                image: DecorationImage(
                                  image: AssetImage(qrCode),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: CommonDottedHorizontal(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: [
                              Image.asset("assets/svg/phone.png"),
                              5.height,
                              Text10(
                                "Contact Support",
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text12("Ticket Price (2)"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text12("Convenience Fee"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text12("Discount"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text12("Delivery Charges"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text12("Additional Charges"),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text12(":"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text12(":"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text12(":"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text12(":"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text12(":"),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text12("\$ 319.00"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text12("\$ 1.50"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text12("\$ 0.00"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text12("\$ 0.00"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text12("\$ 0.00"),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: AppColors.lightGrey,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text12(
                                "Total Amount",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text12(":"),
                              Text12(
                                "\$ 320.50",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 20.0, top: 10.0, bottom: 10.0, right: 15.0),
                child: Text(
                  "*It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                  style: AppTextStyles.lineText10WhiteStyle,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TicketInfoRow extends StatelessWidget {
  final String label;
  final double value;

  TicketInfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text('$label'),
        ),
        Text(':'),
        Text('\$ ${value.toStringAsFixed(2)}'),
      ],
    );
  }
}
