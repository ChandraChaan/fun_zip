import 'package:flutter/material.dart';

import 'package:fun_zippy/app/theme/colors.dart';

import '../../../../theme/text_theme.dart';
import '../../../../widgets/custom_buttons.dart';

class LiveStreamProviderButtonWidget extends StatelessWidget {
  const LiveStreamProviderButtonWidget({
    super.key,
    required this.onPressed,
    required this.index,
    required this.selectedIndex,
    required this.title,
  });
  final VoidCallback onPressed;
  final int index;
  final int selectedIndex;
  final String title;

  @override
  Widget build(BuildContext context) {
    if (selectedIndex == index) {
      return Expanded(
        flex: index == 0 ? 60 : 40,
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              PrimaryButtonWidget(
                onPressed: onPressed,
                text: '$title',
                radius: 21,
                color: blueColor,
              ),
            ],
          ),
        ),
      );
    } else {
      return Expanded(
          flex: index == 0 ? 60 : 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: SmallWhiteBackgroundButton(
                onPressed: onPressed,
                height: 44,
                radius: 21,
                child: Text(
                  '$title',
                  style: buttonText.copyWith(color: blueColor, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                borderColor: blueColor),
          ));
    }
  }
}
