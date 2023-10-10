import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../../../widgets/rounded_border.dart';

class WhetherWidget extends StatelessWidget {
  const WhetherWidget({
    super.key,
  });

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
            child: Text('Whether', style: titleBoldText),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 2, child: SvgPicture.asset(whetherIconImage)),
                    Stack(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              10.height,
                              Text('20',
                                  style: boldText.copyWith(
                                      fontSize: 47,
                                      fontWeight: FontWeight.w700)),
                              Text('cloudy',
                                  style: boldText.copyWith(fontSize: 12)),
                            ],
                          ),
                        ),
                        Positioned.fill(
                          top: 0,
                          right: 0,
                          child: Text('°C',
                              style: boldText.copyWith(fontSize: 12),
                              textAlign: TextAlign.right),
                        )
                      ],
                    ),
                  ],
                ),
                10.height,
                Text('Thursday, Aug 31, 2023',
                    style: normalText.copyWith(fontSize: 18)),
                10.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SvgPicture.asset(wind_speedIconImage),
                            5.height,
                            Text('9km/h',
                                style: boldText.copyWith(fontSize: 10)),
                          ],
                        )),
                    Spacer(),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SvgPicture.asset(rain_dropIconImage),
                            5.height,
                            Text('58%', style: boldText.copyWith(fontSize: 10)),
                          ],
                        )),
                    Spacer(),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SvgPicture.asset(umbrellaIconImage),
                            5.height,
                            Text('25%', style: boldText.copyWith(fontSize: 10)),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
