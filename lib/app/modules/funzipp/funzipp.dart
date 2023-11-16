import 'package:flutter/material.dart';
import 'package:fun_zippy/app/config/images_links.dart';
import 'package:fun_zippy/app/modules/common_data/common_dottedline_veertical.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';
import 'package:dotted_line/dotted_line.dart';

class FunZippy extends StatelessWidget {
  final double diameter;
  final String imageUrl;
  final String eventName;
  final String dateTime;
  final String location;
  final String ticketType;
  final String tickets;
  final String seatNumber;
  final String bookingId;
  final String amount;
  final String actualPrice;
  final String totalAmount;
  final String groupDiscountPercentage;
  final String currency;

  const FunZippy({
    super.key,
    this.diameter = 50,
    required this.imageUrl,
    required this.eventName,
    required this.dateTime,
    required this.location,
    required this.ticketType,
    required this.tickets,
    required this.seatNumber,
    required this.bookingId,
    required this.amount,
    required this.actualPrice,
    required this.totalAmount,
    required this.groupDiscountPercentage, required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    SizeGet().init(context);
    return Scaffold(
      backgroundColor: AppColors.deepBule,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: SizeGet.getProportionHeight(812 / 11),
                            width: SizeGet.getProportionWidth(375 / 2.4),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(assetSplash),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.only(
                              bottom: 10.0, left: 10.0, right: 10.0),
                          child: CommonDottedHorizontal()),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 10.0, right: 10.0, bottom: 5.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: SizeGet.getProportionHeight(812 / 10.5),
                              width: SizeGet.getProportionWidth(375 / 4.5),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(imageUrl
                                          // 'https://upload.wikimedia.org/wikipedia/commons/d/df/Family_Portrait.jpg',
                                          ),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              // height: SizeGet.getProportionHeight(70),
                              width: SizeGet.getProportionWidth(200),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    eventName,
                                    // "The Routinel Hosted by Abish Mathew",
                                    style: AppTextStyles.lineText14BoldStyle,
                                    maxLines: 3, // Limit to 3 lines
                                    overflow: TextOverflow
                                        .ellipsis, // Show ellipsis (...) if text is truncated
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.date_range,
                                        color: AppColors.grey,
                                        size: 17,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        dateTime,
                                        // "Aug 25, 2023 | 8:30PM",
                                        style: AppTextStyles.lineText10Style,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on_outlined,
                                        color: AppColors.grey,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        location,
                                        // "Hi-tech City, Hyderabad",
                                        style: AppTextStyles.lineText10Style,
                                      )
                                    ],
                                  ),
                                ],
                              ),
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
                              const Text(
                                "Ticket Type",
                                style: AppTextStyles.lineText12Style,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                ticketType,
                                // "Diamond",
                                style: AppTextStyles.lineText14BoldStyle,
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
                              const Text(
                                "Tickets",
                                style: AppTextStyles.lineText12Style,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                tickets,
                                // "03",
                                style: AppTextStyles.lineText14BoldStyle,
                              )
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
                              const Text(
                                "Seat Numbers",
                                style: AppTextStyles.lineText12Style,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.event_seat,
                                    size: 20,
                                  ),
                                  Text(
                                    " $seatNumber",
                                    // " " + "J21, J22, J23",
                                    style: AppTextStyles.lineText14BoldStyle,
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
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Booking id",
                                  style: AppTextStyles.lineText12Style,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  bookingId,
                                  // "TRHAM521452671",
                                  style: AppTextStyles.lineText14BoldStyle,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Amount",
                                  style: AppTextStyles.lineText12Style,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  amount,
                                  // "\$ 320.50",
                                  style: AppTextStyles.lineText14BoldStyle,
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
                          child: CommonDottedHorizontal()),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.call,
                              color: AppColors.lightGrey,
                            ),
                            Text(
                              "Contact Support",
                              style: AppTextStyles.lineText12Style,
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
              padding: const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0),
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
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text("Ticket Price ($tickets)",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text("Convenience Fee",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text("Discount",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text("Delivery Charges",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text("Additional Charges",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(":",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(":",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(":",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(":",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(":",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text("$currency $actualPrice",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text("\$ 0.00",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text("$currency $groupDiscountPercentage",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text("\$ 0.00",
                                    style: AppTextStyles.lineTextStyle),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text("\$ 0.00",
                                    style: AppTextStyles.lineTextStyle),
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
                            Text(
                              "Total Amount",
                              style: AppTextStyles.lineText14BoldStyle,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text(
                              ":",
                              style: AppTextStyles.lineText14BoldStyle,
                            ),
                            Text(
                              totalAmount,
                              // "\$ 320.50",
                              style: AppTextStyles.lineText14BoldStyle,
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
