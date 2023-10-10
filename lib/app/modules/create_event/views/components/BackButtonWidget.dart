import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/widgets/custom_buttons.dart';

import '../../../../theme/text_theme.dart';
import '../../controllers/create_event_controller.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
    required this.controller,
    required this.onPressed,
  });

  final CreateEventController controller;
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
              'Back',
              style: buttonText.copyWith(color: redColor, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            borderColor: redColor));
  }
}
