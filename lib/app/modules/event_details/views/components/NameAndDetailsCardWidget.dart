import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          color: Color(0XFF823887),
          // LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.topRight,
          //     colors: <Color>[
          //       Color(0xFF560B7E),
          //       Color(0xFF58070A),
          //     ],
          //     stops: [0.0, 1.0],
          //     tileMode: TileMode.clamp),
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
                  style: boldText.copyWith(fontSize: 16,color: Colors.white),
                ),
              ),
              10.height,
              //location
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      mapPinIconImage,
                      height: 14,
                      color: Colors.white,
                    ),
                    5.width,
                    Expanded(
                      child: Text(
                        '${controller.eventDetailsModel.locationName ?? ''}',
                        style: normalText.copyWith(fontSize: 10,color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              5.height,
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(eventIconIconImage, height: 14,color: Colors.white,),
                            5.width,
                            Text(
                              formatDateForHome(
                                  date:
                                  controller.eventDetailsModel.startDateTime ??
                                      ''),
                              style: normalText.copyWith(fontSize: 10,color: Colors.white),
                            ),
                          ],
                        ),
                        5.width,
                        SizedBox(
                          height: 18,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              calculateDayLeft(
                                  startDate: controller
                                      .eventDetailsModel.startDateTime),
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
                ),
              ),
              10.height,
            ],
          ),
        ),
      ],
    );
  }
}
