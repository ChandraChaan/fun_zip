import 'package:flutter/material.dart';
import 'package:fun_zippy/app/config/images_links.dart';
import 'package:fun_zippy/app/modules/common_data/common_dottedline_veertical.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';
import 'package:dotted_line/dotted_line.dart';

import '../../data/repository/event_repository.dart';
import '../../widgets/error_snackbar.dart';

class TicketViewPopUp extends StatefulWidget {
  final double diameter;
  final String imageUrl;
  final String eventName;
  final String qrcode;
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

  const TicketViewPopUp({
    super.key,
    this.diameter = 50,
    required this.imageUrl,
    required this.eventName,
    required this.qrcode,
    required this.dateTime,
    required this.location,
    required this.ticketType,
    required this.tickets,
    required this.seatNumber,
    required this.bookingId,
    required this.amount,
    required this.actualPrice,
    required this.totalAmount,
    required this.groupDiscountPercentage,
    required this.currency,
  });

  @override
  State<TicketViewPopUp> createState() => _TicketViewPopUpState();
}

class _TicketViewPopUpState extends State<TicketViewPopUp> {
  // Map ticketdetailsapi = {};
  //
  // Future<void> ticketDetails() async {
  //   try {
  //     var response = await EventRepository().ticketDetails();
  //     print(response.toString());
  //     print('Sathya get profile details');
  //     final bodyData = response;
  //     setState(() {
  //       ticketdetailsapi = (bodyData); // Wrap bodyData in a list
  //     });
  //   } catch (e) {
  //     errorSnackbar(title: '$e', desc: '');
  //   }
  // }
  //
  // @override
  // void initState() {
  //   ticketDetails();
  //   setState(() {});
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // SizeGet().init(context);
    return Scaffold(
      backgroundColor: AppColors.deepBule,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
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
                                        image: NetworkImage(widget.imageUrl
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
                                      widget.eventName,
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
                                          size: 16,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text10(
                                          widget.dateTime,
                                          // "Aug 25, 2023 | 8:30PM",
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
                                          size: 16,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text10(
                                          widget.location,
                                          // "Hi-tech City, Hyderabad",
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
                                const Text10(
                                  "Ticket Type",
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  widget.ticketType,
                                  // "Diamond",
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
                                Text(
                                  widget.tickets,
                                  // "03",
                                  style: TextStyle(fontSize: 14),
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
                                const Text10("Seat Numbers"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('assets/svg/seat.png'),
                                    Text(
                                      " ${widget.seatNumber}",
                                      // " " + "J21, J22, J23",
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
                                  const Text10("Booking id"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    widget.bookingId,
                                    // "TRHAM521452671",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text10("Amount"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    widget.amount,
                                    // "\$ 320.50",
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
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                color: AppColors.deepWhite,
                              ),
                              child: Image.network(
                                widget.qrcode.toString() != 'null'
                                    ? ('https://funzippy.com' +
                                        widget.qrcode.toString())
                                    : 'https://funzippy.com/custom/media/tickets/h6Wh3RnLi4p0.png',
                                loadingBuilder: (BuildContext context,
                                    Widget child,
                                    ImageChunkEvent? loadingProgress) {
                                  if (loadingProgress == null) {
                                    return child;
                                  } else {
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                (loadingProgress
                                                        .expectedTotalBytes ??
                                                    1)
                                            : null,
                                      ),
                                    );
                                  }
                                },
                                // 'https://funzippy.com/custom/media/tickets/h6Wh3RnLi4p0.png',
                                //'${ticketdetailsapi.isNotEmpty ? ("file///funzippy.com"+(ticketdetailsapi["data"]["tickets"][0]["qrCodeFilePath"]).toString()) : ""}',
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
                                color: Color(0XFF85829B),
                              ),
                              Text10(
                                "Contact Support",
                                style: TextStyle(fontSize: 14),
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
                padding:
                    const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0),
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
                                  child: Text10(
                                      "Ticket Price (${widget.tickets})"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text10("Convenience Fee"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text10("Discount"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text10("Delivery Charges"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text10("Additional Charges"),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text10(":"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text10(":"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text10(":"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text10(":"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: Text10(":"),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text10("\$ ${widget.actualPrice}"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text10("\$ 0.00"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text10(
                                      "\$ ${widget.groupDiscountPercentage}"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text10("\$ 0.00"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text10("\$ 0.00"),
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
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                ":",
                                style: AppTextStyles.lineText14BoldStyle,
                              ),
                              Text(
                                widget.totalAmount,
                                // "\$ 320.50",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
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
