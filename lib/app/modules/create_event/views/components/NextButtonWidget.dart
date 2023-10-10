// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fun_zippy/app/widgets/custom_buttons.dart';

import '../../../../theme/colors.dart';
import '../../../../theme/text_theme.dart';
import '../../controllers/create_event_controller.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    Key? key,
    required this.controller,
    required this.onPressed,
  }) : super(key: key);

  final CreateEventController controller;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: PrimaryButtonWidget(
        onPressed: onPressed,
        text: 'Next',
        radius: 10,
      ),
    );
  }
}
