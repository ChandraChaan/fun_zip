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
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SponsorshipScreen);
                      },
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
              for (int index = 0;
                  index < controller.eventDetailsModel.sponsors!.length;
                  index++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 82,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: .2)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
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
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          controller.eventDetailsModel
                                                  .sponsors![index]['name'] ??
                                              ' ',
                                          style:
                                              boldText.copyWith(fontSize: 14),
                                        ),
                                        SizedBox(width: 60),
                                        Row(
                                          children: [
                                            SvgPicture.asset(messageIconImage),
                                            10.width,
                                            SvgPicture.asset(callIconImage),
                                            10.width,
                                            SvgPicture.asset(browserIconImage)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
