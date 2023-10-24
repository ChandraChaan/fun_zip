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
      child: Column(
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
                child: GridView.builder(
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 10,
                    childAspectRatio: 40 / 50,
                  ),
                  itemCount: controller.eventDetailsModel.honoraryGuests!.length,
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
                          10.height,
                          Text(
                            controller.eventDetailsModel.honoraryGuests![index]['name'] ?? ' ',
                            style: boldText.copyWith(fontSize: 14),
                          ),
                          10.height,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.message_outlined, color: textColor, size: 10),
                              5.width,
                              Expanded(
                                child: Text(
                                  controller.eventDetailsModel.honoraryGuests![index]['emailAddress'] ?? ' ',
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
                                controller.eventDetailsModel.honoraryGuests![index]['website'] ?? ' ',
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

