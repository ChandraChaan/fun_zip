import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/create_event/controllers/create_event_controller.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';
import '../../../../theme/text_theme.dart';
import '../../../../widgets/CommonDropdownWidget.dart';
import '../../../../widgets/CommonTextField.dart';
import 'EventAccessSelectorWidget.dart';
import 'LocationWidget.dart';

const eventAccessTitleList = ['Public', 'Group (Invite only)'];
const chooseGroupList = ['Public', 'Group (Invite only)'];

class InPersonWidget extends GetView<CreateEventController> {
  const InPersonWidget({
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
          LocationWidget(),

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
              controller: controller.address1TextEditingController,
              name: 'address1',
              hintText: 'Address',
              required: true),
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
                        controller: controller.cityTextEditingController,
                        name: 'city',
                        hintText: 'City',
                        required: true),
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
                        controller: controller.stateTextEditingController,
                        name: 'state',
                        hintText: 'State',
                        required: false),
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
                        controller: controller.postalCodeTextEditingController,
                        name: 'postal_code',
                        hintText: 'Postal Code',
                        required: false,
                        digitsOnly: true),
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
                        controller: controller.countryTextEditingController,
                        name: 'country',
                        hintText: 'Country',
                        required: false),
                  ],
                ),
              ),
            ],
          ),
          20.height,
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
                  itemList: ['Group1', 'Group2'],
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
