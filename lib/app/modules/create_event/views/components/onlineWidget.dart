import 'package:flutter/material.dart';

import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../../../theme/text_theme.dart';
import '../../controllers/create_event_controller.dart';
import '../../../../widgets/CommonDropdownWidget.dart';
import '../../../../widgets/CommonTextField.dart';
import 'EventAccessSelectorWidget.dart';
import 'InPersonWidget.dart';
import 'LiveStreamProviderButtonWidget.dart';

const eventLocalityTitleList = <String>[
  'FunZippy Streaming',
  'Custom link',
];

class OnlineWidget extends GetView<CreateEventController> {
  const OnlineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //* Time Zone Dropdown
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Time Zone*',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                    text: '*',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: redColor)),
              ],
            ),
          ),
          5.height,
          CommonDropdownWidget(
            keyName: 'choose_time_zone',
            hintText: 'Choose Time Zone',
            itemList: ['9.00', '9:30', 'Other'],
            required: true,
            onPressed: (p0) {},
          ),
          20.height,
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Livestream provider',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          5.height,
          Row(
              children: List.generate(eventLocalityTitleList.length, (index) {
            String title = eventLocalityTitleList[index];
            return LiveStreamProviderButtonWidget(
                onPressed: () {
                  controller.selectedLiveStreamProvider.value = index;
                },
                index: index,
                selectedIndex: controller.selectedLiveStreamProvider.value,
                title: title);
          })),
          if (controller.selectedLiveStreamProvider.value == 1)
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                20.height,
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Live Link',
                          style:
                              normalText.copyWith(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                5.height,
                CommonTextField(
                    name: 'event_locality',
                    hintText: 'Event Locality',
                    required: false),
                20.height,
              ],
            ),

          10.height,
          //* Event Locality
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Event Locality',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '*',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: redColor),
                ),
              ],
            ),
          ),
          10.height,
          //* Event Locality button selector
          Row(
              children: List.generate(eventAccessTitleList.length, (index) {
            String title = eventAccessTitleList[index];
            return EventAccessSelectorWidget(
                onPressed: () {
                  controller.selectedEventAccess.value = index;
                  // Scrollable.ensureVisible(dataKey.currentContext!);
                },
                index: index,
                selectedIndex: controller.selectedEventAccess.value,
                title: title);
          })),
          //*select Group
          Visibility(
            visible: controller.selectedEventAccess.value == 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                20.height,
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Groups',
                          style:
                              normalText.copyWith(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: redColor),
                      ),
                    ],
                  ),
                ),
                10.height,
                CommonDropdownWidget(
                  keyName: 'group',
                  hintText: 'Choose Group',
                  itemList: ['Male', 'Female', 'Other'],
                  onPressed: (p0) {},
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
