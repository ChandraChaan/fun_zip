import 'package:flutter/material.dart';

import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../theme/text_theme.dart';
import '../../controllers/create_event_controller.dart';
import 'EventLocalityButtonWidget.dart';

const eventLocalityTitleList = <String>[
  'In Person',
  'Online',
  'Mixed',
];

class EventLocalityWidget extends StatelessWidget {
  const EventLocalityWidget({
    super.key,
    required this.controller,
  });

  final CreateEventController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        20.height,
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: 'Event Locality',
                  style: normalText.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        10.height,
        Row(
            children: List.generate(eventLocalityTitleList.length, (index) {
          String title = eventLocalityTitleList[index];
          return EventLocalityButtonWidget(
              onPressed: () {
                controller.selectedEventLocality.value = index;
              },
              index: index,
              selectedIndex: controller.selectedEventLocality.value,
              title: title);
        })),
        20.height,
      ],
    );
  }
}
