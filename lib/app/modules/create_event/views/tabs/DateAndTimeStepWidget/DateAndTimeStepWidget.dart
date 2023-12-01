import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../../../../config/images_links.dart';
import '../../../../../theme/text_theme.dart';
import '../../../../../utilities/date_time_format.dart';
import '../../../controllers/create_event_controller.dart';
import '../../../../../widgets/CommonDropdownWidget.dart';
import '../../../../../widgets/CommonTextField.dart';
import 'package:intl/intl.dart';

List<String> repeatList = [
  'Never',
  'Daily',
  'Every Weekday (Monday to Friday)',
  'Custom'
];

class DateAndTimeStepWidget extends GetView<CreateEventController> {
  const DateAndTimeStepWidget({
    super.key,
  });
  bool isEndTimeAfterStartTime(TimeOfDay? startTime, TimeOfDay? endTime) {
    if (startTime == null || endTime == null) {
      return false; // Handle nulls as needed
    }

    final DateTime startDateTime = DateTime(2023, 1, 1, startTime.hour, startTime.minute);
    final DateTime endDateTime = DateTime(2023, 1, 1, endTime.hour, endTime.minute);

    return endDateTime.isAfter(startDateTime);
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Date & Time', style: boldText.copyWith(fontSize: 18)),
          20.height,
          //* Start Date TextField
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Start Date',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '*',
                  style: TextStyle(fontWeight: FontWeight.bold, color: redColor),
                ),
              ],
            ),
          ),
          5.height,
          InkWell(
            onTap: () async {
              controller.startDate = await selectDate(context);

              controller.startDateTextEditingController?.text =
                  DateFormat('dd MMMM, yyyy').format(controller.startDate!);
            },
            child: CommonTextField(
              controller: controller.startDateTextEditingController,
              enabled: false,
              name: 'start_date',
              hintText: 'Start Date',
              required: true,
              prefixIcon: IconButton(
                  onPressed: null, icon: SvgPicture.asset(calendar1IconImage)),
            ),
          ),
          20.height,
          //* Start Time TextField
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Start Time',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '*',
                  style: TextStyle(fontWeight: FontWeight.bold, color: redColor),
                ),
              ],
            ),
          ),
          5.height,
          InkWell(
            onTap: () async {
             controller.selectedTime  = await selectTime(context);

              controller.startTimeTextEditingController!.text =
                  formatTimeOfDay(controller.selectedTime!);
            },
            child: CommonTextField(
              controller: controller.startTimeTextEditingController,
              enabled: false,
              name: 'start_time',
              hintText: 'Start Time',
              required: true,
              prefixIcon: IconButton(
                  onPressed: null, icon: SvgPicture.asset(clockIconImage)),
            ),
          ),
          20.height,
          //* End Date TextField
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'End Date',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '*',
                  style: TextStyle(fontWeight: FontWeight.bold, color: redColor),
                ),
              ],
            ),
          ),
          5.height,
          InkWell(
            onTap: () async {
              DateTime? selectedEndDate = await selectDate(context);
                controller.endDate = selectedEndDate;
                controller.endDateTextEditingController?.text =
                    DateFormat('dd MMMM, yyyy').format(controller.endDate!);
            },
            child: CommonTextField(
              controller: controller.endDateTextEditingController,
              enabled: false,
              name: 'end_date',
              hintText: 'End Date',
              required: true,
              prefixIcon: IconButton(
                  onPressed: null, icon: SvgPicture.asset(calendar1IconImage)),
            ),
          ),
          20.height,
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'End Time',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '*',
                  style: TextStyle(fontWeight: FontWeight.bold, color: redColor),
                ),
              ],
            ),
          ),
          5.height,
          InkWell(
            onTap: () async {
              TimeOfDay? selectedTime = await selectTime(context);

              if (selectedTime != null &&
                  (controller.endDate!.isAfter(controller.startDate!) ||
                      (controller.endDate!.isAtSameMomentAs(controller.startDate!) &&
                          isEndTimeAfterStartTime(controller.selectedTime, selectedTime)))) {
                controller.endTimeTextEditingController!.text =
                    formatTimeOfDay(selectedTime);
              } else {
                // Show an error or handle the validation failure as needed
                // For example, you can display a snackbar or set an error message
                // controller.endDateError = 'End date must be after start date';
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Error'),
                      content: Text('End Time Not Less Then The Start Time.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              }

            },
            child: CommonTextField(
              controller: controller.endTimeTextEditingController,
              enabled: false,
              name: 'end_time',
              hintText: 'End Time',
              required: true,
              prefixIcon: IconButton(
                onPressed: null,
                icon: SvgPicture.asset(calendar1IconImage),
              ),
            ),
          ),
          20.height,
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Repeat',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          5.height,
          CommonDropdownWidget(
            keyName: 'repeat',
            hintText: 'Repeat',
            itemList: repeatList,
            onPressed: (recurringRepeat) {
              controller.recurringRepeat = recurringRepeat;
            },
          ),
        ],
      ),
    );
  }
}
