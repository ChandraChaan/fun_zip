import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/widgets/custom_buttons.dart';

import '../../../../theme/text_theme.dart';

class GenerateDescriptionButtonWidget extends StatelessWidget {
  const GenerateDescriptionButtonWidget({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: SmallWhiteBackgroundButton(
            onPressed: onPressed,
            height: 44,
            radius: 10,
            child: Text(
              'Generate Description',
              style: buttonText.copyWith(color: redColor, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            borderColor: redColor));
  }
}
