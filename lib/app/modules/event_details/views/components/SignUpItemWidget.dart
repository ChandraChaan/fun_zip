import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/colors.dart';
import '../../../../widgets/custom_buttons.dart';
import '../../../../widgets/rounded_border.dart';

class SignUpItemWidget extends StatelessWidget {
  const SignUpItemWidget({
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
            child: Text('Sign up Items', style: titleBoldText),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Text('Sign up to a slot below', style: normalText.copyWith()),
          ),
          GridView.count(
              padding: EdgeInsets.all(8),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              childAspectRatio: 60 / 40,
              children: List.generate(6, (index) {
                return Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: .2)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE1FFCF),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                5.height,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(calendarIconImage),
                                    5.width,
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '7th august',
                                            style:
                                                boldText.copyWith(fontSize: 8),
                                          ),
                                          5.height,
                                          Text(
                                            '09:00 AM - 10:00 PM',
                                            style:
                                                boldText.copyWith(fontSize: 7),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                5.height,
                              ],
                            ),
                          ),
                        ),
                        10.height,
                        Expanded(
                          flex: 1,
                          child: Center(
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
                        ),
                      ],
                    ),
                  ),
                );
              }))
        ],
      ),
    );
  }
}
