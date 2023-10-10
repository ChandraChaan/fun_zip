import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/create_event/controllers/create_event_controller.dart';

import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';
import '../../../../theme/text_theme.dart';
import '../../../../widgets/CommonDropdownWidget.dart';
import '../../../../widgets/CommonTextField.dart';
import 'EventAccessSelectorWidget.dart';
import 'LiveStreamProviderButtonWidget.dart';
import 'onlineWidget.dart';

const eventAccessTitleList = ['Public', 'Group (Invite only)'];

class MixedWidget extends GetView<CreateEventController> {
  const MixedWidget({
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
          //* Address1 Location TextField
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Location',
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
              name: 'location', hintText: 'Location', required: true),
          20.height,
          //* Address1 TextField
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Address1',
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
              name: 'address1', hintText: 'Address', required: true),
          20.height,
          Row(
            children: [
              //* City TextField
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'City',
                              style: normalText.copyWith(
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: redColor),
                          ),
                        ],
                      ),
                    ),
                    5.height,
                    CommonTextField(
                        name: 'city', hintText: 'City', required: true),
                  ],
                ),
              ),
              10.width,
              //* State TextField
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'State',
                              style: normalText.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    5.height,
                    CommonTextField(
                        name: 'state', hintText: 'State', required: false),
                  ],
                ),
              ),
            ],
          ),
          20.height,
          Row(
            children: [
              //* Postal Code TextField
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Postal Code',
                              style: normalText.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    5.height,
                    CommonTextField(
                        name: 'postal_code',
                        hintText: 'Postal Code',
                        required: false),
                  ],
                ),
              ),
              10.width,
              //* Country Textfield
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Country',
                              style: normalText.copyWith(
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    5.height,
                    CommonTextField(
                        name: 'country', hintText: 'Country', required: false),
                  ],
                ),
              ),
            ],
          ),
          20.height,
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

          20.height,
          //* Event Locality
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Event access',
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
