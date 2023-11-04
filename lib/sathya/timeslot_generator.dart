import 'package:flutter/material.dart';

import 'common_data/common_text_container.dart';

class TimeSlotGenerator extends StatelessWidget {
  const TimeSlotGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
      children: [
            CommonTextFieldContainer(
              iconData: Icons.arrow_back,
              heading: 'hwl',
            )
      ],
    ),
          ),
        ));
  }
}
