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
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
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
                    itemCount:
                        controller.eventDetailsModel.honoraryGuests!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
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
                                          borderRadius:
                                              BorderRadius.circular(27),
                                          border: Border.all(
                                              color: Color(0XFF5B46F4))),
                                      child: Image.asset(
                                          'assets/svg/ellipse_11.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller.eventDetailsModel
                                                        .honoraryGuests![index]
                                                    ['name'] ??
                                                ' ',
                                            style:
                                                boldText.copyWith(fontSize: 14),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  if (controller
                                                          .eventDetailsModel
                                                          .honoraryGuests![
                                                              index]
                                                              ['emailAddress']
                                                          .toString() !=
                                                      'null') ...[
                                                    Icon(
                                                      Icons.mail_lock_outlined,
                                                      size: 9,
                                                      color: Color(0XFF86839B),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      controller.eventDetailsModel
                                                                      .honoraryGuests![
                                                                  index][
                                                              'emailAddress'] ??
                                                          ' ',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Color(
                                                              0XFF86839B)),
                                                    ),
                                                    70.width,
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                            facebook_2IconImage),
                                                        10.width,
                                                        SvgPicture.asset(
                                                            linkedin_2IconImage),
                                                        10.width,
                                                        SvgPicture.asset(
                                                            twitter_2IconImage),
                                                      ],
                                                    ),
                                                  ],
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              if (controller
                                                      .eventDetailsModel
                                                      .honoraryGuests![index]
                                                          ['emailAddress']
                                                      .toString() !=
                                                  'null') ...[
                                                Icon(Icons.call,
                                                    size: 9,
                                                    color: Color(0XFF86839B)),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  controller.eventDetailsModel
                                                              .honoraryGuests![
                                                          index]['website'] ??
                                                      ' ',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0XFF86839B),
                                                  ),
                                                ),
                                              ],
                                            ],
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
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
