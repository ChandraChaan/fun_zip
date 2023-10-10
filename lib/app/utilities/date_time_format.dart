import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final DateTime today = DateTime.now();
calculateDayLeft({required startDate}) {
  String day = '';
  DateTime? currentDate;
  if (startDate.runtimeType == int) {
    currentDate = DateTime.fromMillisecondsSinceEpoch(startDate);
  } else if (startDate.runtimeType == String) {
    currentDate = DateTime.tryParse(startDate.toString());
  }

  final difference = currentDate!.difference(today).inDays;

  if (difference == 0) {
    return 'Today';
  }

  if (difference / 30 > 1) {
    day += '${difference ~/ 30} month';
  }

  if (difference / 30 >= 2) {
    day += 's';
  }

  if (difference % 30 >= 2) {
    day += ' ${difference % 30} days left';
  } else {
    day += ' ${difference % 30} day left';
  }

  return day;
}

formatDateForHome({required date}) {
  DateTime? currentDate;
  if (date.runtimeType == int) {
    currentDate = DateTime.fromMillisecondsSinceEpoch(date);
  } else if (date.runtimeType == String) {
    currentDate = DateTime.tryParse(date.toString());
  }

  final DateFormat formatter = DateFormat('MMM dd, yyyy | HH:mm a');
  final String formatted = formatter.format(currentDate!);
  return formatted;
}

Future<DateTime?> selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: today,
      initialDatePickerMode: DatePickerMode.day,
      firstDate: today,
      lastDate: DateTime(2030));
  if (picked != null)

    // selectedDate = picked;
    // _dateController.text = DateFormat.yMd().format(selectedDate);

    return picked;
  else {
    return null;
  }
}

Future<TimeOfDay?> selectTime(BuildContext context) async {
  final TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );
  if (picked != null) {
    return picked;
  } else {
    return null;
  }

  // selectedTime = picked;
  // _hour = selectedTime.hour.toString();
  // _minute = selectedTime.minute.toString();
  // _time = _hour + ' : ' + _minute;
  // _timeController.text = _time;
  // _timeController.text = formatDate(
  //     DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
  //     [hh, ':', nn, " ", am]).toString();
}

String formatTimeOfDay(TimeOfDay timeOfDay) {
  final now = new DateTime.now();
  final dt =
      DateTime(now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
  final format = DateFormat.jm(); //"6:00 AM"
  return format.format(dt);
}

String forMatDateForEvent(DateTime dateTime) {
  // "2023-09-26T10:00:00.000Z",
  final formatter = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
  final String formatted = formatter.format(dateTime);
  return formatted;
}
