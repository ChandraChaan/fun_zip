import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../../../widgets/rounded_border.dart';
import '../../controllers/event_details_controller.dart';

class BoothsWidget extends StatelessWidget {
  const BoothsWidget({
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
            child: Text('Booths', style: titleBoldText),
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
                  padding: EdgeInsets.all(4),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 10,
                    childAspectRatio: 40 / 45,
                  ),
                  itemCount: controller.eventDetailsModel.boothCategories!.length,
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
                              child: Image.asset('assets/svg/ellipse_23.png'),
                              // child: SvgPicture.asset(parkingIconImage),
                            ),
                          ),
                          20.height,
                          Text(
                              controller.eventDetailsModel.boothCategories![index]['name'].toString(),
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

