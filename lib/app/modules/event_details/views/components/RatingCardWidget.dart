import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../widgets/custom_buttons.dart';
import '../../../../widgets/rounded_border.dart';
import '../../controllers/event_details_controller.dart';

class RatingCardWidget extends StatelessWidget {
  const RatingCardWidget({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: RatingBarIndicator(
                  rating: 2.5,
                  itemCount: 5,
                  itemSize: 15.0,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color(0xFFFBBB00),
                  ),
                ),
              ),
              5.width,
              Text('4.5', style: boldText.copyWith(fontSize: 10)),
              5.width,
              VerticalDivider(
                color: textColor,
                thickness: .3,
              ),
              5.width,
              Text(
                'Tegs',
                style: normalText.copyWith(
                  fontSize: 12,
                ),
              ),
              5.width,
              Expanded(
                flex: 6,
                child: Wrap(
                  runSpacing: 5,
                  spacing: 5,
                  children: List.generate(
                    controller.eventDetailsModel.searchTags?.length ?? 0,
                    (index) {
                      String tag = controller
                          .eventDetailsModel.searchTags![index]
                          .toString();
                      return SizedBox(
                        height: 18,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '$tag',
                            style: normalText.copyWith(
                              color: Color(0xFFFF5C00),
                              fontSize: 8,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: EdgeInsets.all(5),
                            backgroundColor: Colors.deepOrange.shade50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
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
                            'Watch Lives',
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
          ),
        ),
      ),
    );
  }
}
