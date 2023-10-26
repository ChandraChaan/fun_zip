import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../../../widgets/rounded_border.dart';
import '../../controllers/event_details_controller.dart';

class SpeakersWidget extends StatelessWidget {
  const SpeakersWidget({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.0,
        shape: roundedBorder(radius: 15),
    child:
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Speakers', style: titleBoldText),
        ),
        10.height,
        Row(
          children: [
            5.width,
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 2,
                //   mainAxisSpacing: 0,
                //   crossAxisSpacing: 10,
                //   childAspectRatio: 40 / 50,
                // ),
                itemCount: controller.eventDetailsModel.honoraryGuests!.length,
                itemBuilder: (context, index) {
                  return
                    // sathya
                    Container(
                      height: 82,
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
                                  child: Image.asset('assets/svg/ellipse_11.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.eventDetailsModel
                                            .honoraryGuests![index]['name'] ??
                                            ' ',
                                        style: boldText.copyWith(fontSize: 14),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.mail_lock_outlined,
                                            size: 9,
                                            color: Color(0XFF86839B),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'johnmethew@gmail.com',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0XFF86839B)),
                                          ),
                                          SizedBox(
                                            width: 65,
                                          ),
                                          SvgPicture.asset(facebook_2IconImage),
                                          10.width,
                                          SvgPicture.asset(linkedin_2IconImage),
                                          10.width,
                                          SvgPicture.asset(twitter_2IconImage),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.call,
                                              size: 9, color: Color(0XFF86839B)),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('+91 9876543210',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0XFF86839B))),
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
                    );
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
                },
              ),
            ),
            5.width
          ],
        ),
        10.height,
      ],
      )
    );
  }
}
