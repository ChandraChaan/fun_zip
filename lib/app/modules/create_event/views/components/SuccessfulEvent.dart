// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../../../widgets/custom_buttons.dart';
import '../../controllers/create_event_controller.dart';

class SuccessfulEventPage extends GetView<CreateEventController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: SvgPicture.asset(crossIconImage))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(successIconImage),
            30.height,
            Text('Successful',
                style: normalText.copyWith(fontSize: 22, color: blackColor)),
            10.height,
            Text(
              'It is a long established fact that a reader will\n  be distracted by the readable content.',
              style: normalText.copyWith(height: 1.5),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(60.0),
        child: PrimaryButtonWidget(
          onPressed: () {
            String uid = Get.arguments;
            controller.afterEventCreationCallThisAPI(uid);
          },
          text: 'Done!',
          radius: 10,
        ),
      ),
    );
  }
}
