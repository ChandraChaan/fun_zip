import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../theme/text_theme.dart';
import '../../../../widgets/custom_buttons.dart';
import '../../../../widgets/rounded_border.dart';

class PotluckItemsWidget extends StatelessWidget {
  const PotluckItemsWidget({
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
            child: Text('Potluck Items', style: titleBoldText),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Text('Sign Up for an Item Below', style: normalText.copyWith()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Classic Mac & Cheese Pasta',
                            style: normalText.copyWith(
                                fontSize: 9, color: whiteColor),
                          ),
                          5.height,
                          Text(
                            'Contains wheat, milk. Energy : 556 Kcal (Mini Bowl) (Mini : 390 gms).',
                            style: normalText.copyWith(
                                fontSize: 7, color: whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                5.width,
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F2FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nawabi Paneer with Pulao',
                            style: normalText.copyWith(
                                fontSize: 9, color: Color(0xFF5E5A80)),
                          ),
                          5.height,
                          Text(
                            'Contains milk, nuts. Energy : 671 Kcal (Mini Bowl). (Mini : 375 gms).',
                            style: normalText.copyWith(
                                fontSize: 7, color: Color(0xFF5E5A80)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SmallWhiteBackgroundButton(
                  height: 20,
                  radius: 30,
                  child: Text(
                    'Sign up for potluck',
                    style: buttonText.copyWith(color: redColor, fontSize: 8),
                    textAlign: TextAlign.center,
                  ),
                  borderColor: redColor)),
        ],
      ),
    );
  }
}
