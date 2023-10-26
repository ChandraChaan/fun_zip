import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../../../config/images_links.dart';
import '../../../../routes/app_pages.dart';
import '../../../../theme/text_theme.dart';
import '../../../../widgets/rounded_border.dart';
import '../../controllers/event_details_controller.dart';

class SponsorsWidget extends StatelessWidget {
  const SponsorsWidget({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sponsors', style: titleBoldText),
                SizedBox(
                  width: 109,
                  height: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.SponsorshipScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Color(0XFFC61236)),
                      ),
                    ),
                    child: Container(
                      height: 20,
                      width: 114,
                      child: Center(
                        child: Text(
                          'See Sponsorship Packages',
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Our Solutions have helped our clients connect with their customers and employees in new, promising ways here are some of our clients',
                style: normalText),
          ),
          // previous developer
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              10.height,
              Row(
                children: [
                5.width,

                // sathya
                Container(
                  height: 82,
                  width: 355,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: .2)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(27),
                                  border:
                                  Border.all(color: Color(0XFF5B46F4))),
                              child: Image.asset('assets/svg/ellipse_23.png'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controller.eventDetailsModel
                                      .honoraryGuests![index]['name'] ?? ' ',
                                  style: boldText.copyWith(fontSize: 14),

                                ),
                                110.width,
                                SvgPicture.asset(messageIconImage),
                                10.width,
                                SvgPicture.asset(callIconImage),
                                10.width,
                                SvgPicture.asset(browserIconImage),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                //previous developer
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: .2)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      10.height,
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: blueColor,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: ClipRRect(
                          // borderRadius: BorderRadius.circular(15),
                          // child: Image.network(result.summaryPicture),
                          child: Image.asset('assets/svg/ellipse_11.png'),
                        ),
                      ),
                      10.height,
                      Text(
                        controller.eventDetailsModel
                            .honoraryGuests![index]['name'] ?? ' ',
                        style: boldText.copyWith(fontSize: 14),
                      ),
                      10.height,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message_outlined, color: textColor,
                              size: 10),
                          5.width,
                          Expanded(
                            child: Text(
                              controller.eventDetailsModel
                                  .honoraryGuests![index]['emailAddress'] ??
                                  ' ',
                              style: normalText.copyWith(fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      10.height,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call, color: textColor, size: 10),
                          5.width,
                          Text(
                            controller.eventDetailsModel
                                .honoraryGuests![index]['website'] ?? ' ',
                            style: normalText.copyWith(fontSize: 10),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          color: Color(0xFFC9C6E1),
                          thickness: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(facebook_2IconImage),
                          10.width,
                          SvgPicture.asset(linkedin_2IconImage),
                          10.width,
                          SvgPicture.asset(twitter_2IconImage),
                        ],
                      ),
                      10.height,
                    ],
                  ),
                );
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              10.height,
              Row(
                children: [
                  5.width,

                  // sathya
                  Container(
                    height: 82,
                    width: 355,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: .2)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(27),
                                    border:
                                    Border.all(color: Color(0XFF5B46F4))),
                                child: Image.asset('assets/svg/ellipse_58.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Zendesk',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        110.width,
                                        SvgPicture.asset(messageIconImage),
                                        10.width,
                                        SvgPicture.asset(callIconImage),
                                        10.width,
                                        SvgPicture.asset(browserIconImage),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                  //previous developer
                  //Container(
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(10),
                  //       border: Border.all(width: .2)),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       10.height,
                  //       Container(
                  //         padding: EdgeInsets.all(10),
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           border: Border.all(
                  //             width: 1,
                  //             color: blueColor,
                  //             style: BorderStyle.solid,
                  //           ),
                  //         ),
                  //         child: ClipRRect(
                  //           // borderRadius: BorderRadius.circular(15),
                  //           // child: Image.network(result.summaryPicture),
                  //           child: Image.asset('assets/svg/ellipse_11.png'),
                  //         ),
                  //       ),
                  //       10.height,
                  //       Text(
                  //         controller.eventDetailsModel.honoraryGuests![index]['name'] ?? ' ',
                  //         style: boldText.copyWith(fontSize: 14),
                  //       ),
                  //       10.height,
                  //       Row(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Icon(Icons.message_outlined, color: textColor, size: 10),
                  //           5.width,
                  //           Expanded(
                  //             child: Text(
                  //               controller.eventDetailsModel.honoraryGuests![index]['emailAddress'] ?? ' ',
                  //               style: normalText.copyWith(fontSize: 10),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       10.height,
                  //       Row(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Icon(Icons.call, color: textColor, size: 10),
                  //           5.width,
                  //           Text(
                  //             controller.eventDetailsModel.honoraryGuests![index]['website'] ?? ' ',
                  //             style: normalText.copyWith(fontSize: 10),
                  //           ),
                  //         ],
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child: Divider(
                  //           color: Color(0xFFC9C6E1),
                  //           thickness: 1,
                  //         ),
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           SvgPicture.asset(facebook_2IconImage),
                  //           10.width,
                  //           SvgPicture.asset(linkedin_2IconImage),
                  //           10.width,
                  //           SvgPicture.asset(twitter_2IconImage),
                  //         ],
                  //       ),
                  //       10.height,
                  //     ],
                  //   ),
                  // );
                ],
              ),
              10.height,
            ],
          ),
          10.height,
        ],
      ),
    );
  }
}

