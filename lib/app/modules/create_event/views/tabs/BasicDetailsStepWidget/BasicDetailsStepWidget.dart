import 'package:flutter/material.dart';

import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../../../../theme/text_theme.dart';
import '../../../controllers/create_event_controller.dart';
import '../../../../../widgets/CommonTextField.dart';

class BasicDetailsStepWidget extends GetView<CreateEventController> {
  const BasicDetailsStepWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Basic Details', style: boldText.copyWith(fontSize: 18)),
          20.height,
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Event Name',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '*',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: redColor),
                ),
              ],
            ),
          ),
          5.height,
          CommonTextField(
              controller: controller.eventNameTextEditingController,
              name: 'event_name',
              hintText: 'Event Name',
              required: true),
          20.height,
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Description',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '*',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: redColor),
                ),
              ],
            ),
          ),
          5.height,
          CommonTextField(
            controller: controller.eventDescriptionTextEditingController,
            name: 'description*',
            hintText: 'Description*',
            required: true,
            multiLine: true,
          ),
        ],
      ),
    );
  }
}
