import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../theme/text_theme.dart';
import '../../components/EventLocalityWidget.dart';
import '../../../controllers/create_event_controller.dart';
import '../../components/InPersonWidget.dart';
import '../../components/MixedWidget.dart';
import '../../components/onlineWidget.dart';

class TypeOfEventWidget extends GetView<CreateEventController> {
  const TypeOfEventWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Type of Event', style: boldText.copyWith(fontSize: 18)),
            EventLocalityWidget(controller: controller),
            if (controller.selectedEventLocality.value == 0) InPersonWidget(),
            if (controller.selectedEventLocality.value == 1) OnlineWidget(),
            if (controller.selectedEventLocality.value == 2) MixedWidget(),
          ],
        ),
      );
    });
  }
}
