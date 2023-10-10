import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../../../widgets/custom_buttons.dart';
import '../../../../widgets/rounded_border.dart';

class GiftRegistryWidget extends StatelessWidget {
  const GiftRegistryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Gift Registry', style: titleBoldText),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Color(0xFFEDEBFB),
                  thickness: 4,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    5.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(flex: 2, child: Image.asset(assetSplash)),
                        5.width,
                        Expanded(
                          flex: 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Baby cycle',
                                style: boldText.copyWith(fontSize: 14),
                              ),
                              Text(
                                'Baby cycle',
                                style: normalText.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: SmallWhiteBackgroundButton(
                              height: 20,
                              radius: 30,
                              child: Text(
                                'Sign up',
                                style: buttonText.copyWith(
                                    color: redColor, fontSize: 8),
                                textAlign: TextAlign.center,
                              ),
                              borderColor: redColor),
                        ),
                      ],
                    ),
                    Divider(color: Color(0xFFEDEBFB), thickness: 2),
                    5.height,
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '02',
                                  style: normalText.copyWith(
                                      fontSize: 14, color: blueColor),
                                ),
                                5.height,
                                Text(
                                  'Total Gifts',
                                  style: normalText.copyWith(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                              color: Color(0xFFEDEBFB), thickness: 2),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '02',
                                  style: normalText.copyWith(
                                      fontSize: 14, color: greenColor),
                                ),
                                5.height,
                                Text(
                                  'Available Gift',
                                  style: normalText.copyWith(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                              color: Color(0xFFEDEBFB), thickness: 2),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '02',
                                  style: normalText.copyWith(
                                      fontSize: 14, color: orangeColor),
                                ),
                                5.height,
                                Text(
                                  'Gift Register',
                                  style: normalText.copyWith(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    5.height,
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
