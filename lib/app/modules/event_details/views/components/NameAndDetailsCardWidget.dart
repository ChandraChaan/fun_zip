import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../utilities/date_time_format.dart';
import '../../controllers/event_details_controller.dart';

class NameAndDetailsCardWidget extends StatelessWidget {
  const NameAndDetailsCardWidget({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            side: BorderSide(color: Colors.white, width: 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.height,
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  '${controller.eventDetailsModel.name ?? ''}',
                  style: boldText.copyWith(fontSize: 16),
                ),
              ),
              10.height,
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(eventIconIconImage, height: 14),
                    5.width,
                    Text(
                      formatDateForHome(
                          date:
                              controller.eventDetailsModel.startDateTime ?? ''),
                      style: normalText.copyWith(fontSize: 10),
                    ),
                    5.width,
                    SizedBox(
                      height: 18,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          calculateDayLeft(
                              startDate:
                                  controller.eventDetailsModel.startDateTime),
                          style: normalText.copyWith(
                            color: Color(0xFFFF5C00),
                            fontSize: 8,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.deepOrange.shade50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              10.height,
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      mapPinIconImage,
                      height: 14,
                      color: textColor,
                    ),
                    5.width,
                    Expanded(
                      child: Text(
                        '${controller.eventDetailsModel.locationName ?? ''}',
                        style: normalText.copyWith(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: SizedBox(
            height: 20,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: <Color>[
                      Color(0xFF560B7E),
                      Color(0xFF58070A),
                    ],
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(5),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: borderRadius),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(video_cameraIconImage),
                    4.width,
                    Text(
                      'Watch Livesss',
                      style: normalText.copyWith(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
