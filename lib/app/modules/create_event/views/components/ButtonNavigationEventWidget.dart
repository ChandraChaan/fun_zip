import 'package:flutter/material.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:fun_zippy/app/widgets/custom_buttons.dart';
import 'package:get/get.dart';
import '../../controllers/create_event_controller.dart';
import 'BackButtonWidget.dart';
import 'GenerateDescriptionButtonWidget.dart';
import 'NextButtonWidget.dart';

class ButtonNavigationEventWidget extends StatelessWidget {
  const ButtonNavigationEventWidget({
    super.key,
    required this.controller,
    required this.onGenerateDescriptionPressed,
    required this.onNextPressed,
    required this.onBackPressed,
    required this.onCreateAnEventPressed,
  });

  final CreateEventController controller;
  final VoidCallback onGenerateDescriptionPressed;
  final VoidCallback onNextPressed;
  final VoidCallback onBackPressed;
  final VoidCallback onCreateAnEventPressed;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      switch (controller.currentPage.value) {
        case 0:
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                GenerateDescriptionButtonWidget(
                  onPressed: onGenerateDescriptionPressed,
                ),
                10.width,
                NextButtonWidget(
                    controller: controller, onPressed: onNextPressed)
              ],
            ),
          );

        case 1 || 2:
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                BackButtonWidget(
                    controller: controller, onPressed: onBackPressed),
                10.width,
                NextButtonWidget(
                  controller: controller,
                  onPressed: onNextPressed,
                )
              ],
            ),
          );

        case 3:
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                BackButtonWidget(
                    controller: controller, onPressed: onBackPressed),
                10.width,
                Expanded(
                  flex: 2,
                  child: PrimaryButtonWidget(
                    onPressed: onCreateAnEventPressed,
                    text: 'Create An Event',
                    radius: 10,
                  ),
                )
              ],
            ),
          );
        default:
          return Offstage();
      }
    });
  }
}
