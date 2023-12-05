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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white)
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                         width: 147,
                         decoration: BoxDecoration(
                           color: Color(0XFFC61236),
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Center(
                             child: Text(
                               'See Sponsorship Packages',
                               style: (TextStyle(color: Colors.white, fontSize: 8)),
                             )),
                         //                            fillColor: Color(0XFFC61236),
                       ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Our Solutions have helped our clients connect with their customers and employees in new, promising ways here are some of our clients',
                  style: normalText),
            ),
            // previous developer
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            for (int index = 0;
                index < controller.eventDetailsModel.sponsors!.length;
                index++)
              Container(
                height: 82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: .2)),
                child: Padding(
                  padding:  EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          SizedBox(width: 7),
                          Text(
                            controller.eventDetailsModel
                                .sponsors![index]['name'] ??
                                ' ',
                            style:
                            boldText.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
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
                ),
              ),
          ],
        ),
      ),
    );
  }
}
