import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';

import '../config/images_links.dart';
import '../data/model/HomeApiResponseModel.dart';
import '../theme/colors.dart';
import '../utilities/date_time_format.dart';

class SingleEventItemWidget extends StatelessWidget {
  const SingleEventItemWidget({
    super.key,
    required this.result,
    required this.onPressed,
  });

  final Results result;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.height,
              Container(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(result.summaryPicture),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${result.name}',
                  style: boldText.copyWith(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SvgPicture.asset(eventIconIconImage, height: 14),
                    5.width,
                    Expanded(
                      child: Text(
                        formatDateForHome(date: result.startDateTime),
                        style: normalText.copyWith(fontSize: 10),
                      ),
                    ),
                    5.width,
                    SizedBox(
                      height: 18,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          calculateDayLeft(startDate: result.startDateTime),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      mapPinIconImage,
                      height: 14,
                      color: textColor,
                    ),
                    5.width,
                    Text(
                      '${result.locationName}',
                      style: normalText.copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
