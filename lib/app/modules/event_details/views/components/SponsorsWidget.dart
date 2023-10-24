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
                  width:109,
                  height: 20,
                  child: ElevatedButton(
                    onPressed: (){
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
                      width: 109,
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
          10.height,
          Row(
            children: [
              5.width,
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 10,
                    childAspectRatio: 40 / 45,
                  ),
                  itemCount: controller.eventDetailsModel.sponsors!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: .2)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              child: SvgPicture.asset(parkingIconImage),
                            ),
                          ),
                          20.height,
                          Text(
                            controller.eventDetailsModel.sponsors![index]['name'].toString(),
                            style: boldText.copyWith(fontSize: 12),
                          ),
                          10.height,
                          Text(
                            controller.eventDetailsModel.sponsors![index]['phoneNumber'].toString(),
                            style: boldText.copyWith(fontSize: 12),
                          ),
                          10.height,
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
                              SvgPicture.asset(messageIconImage),
                              10.width,
                              SvgPicture.asset(callIconImage),
                              10.width,
                              SvgPicture.asset(browserIconImage),
                            ],
                          ),
                          10.height,
                        ],
                      ),
                    );
                  },
                ),
              ),
              5.width
            ],
          ),
          10.height,
        ],
      ),
    );
  }
}

