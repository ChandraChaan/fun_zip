import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../home/controllers/home_controller.dart';

class EditingEvent extends StatefulWidget {
  const EditingEvent({super.key});

  @override
  State<EditingEvent> createState() => _EditingEventState();
}

class _EditingEventState extends State<EditingEvent> {
  String selectedOption = '';

  bool firstRowSelected = false;
  bool secondRowSelected = true;
  String timeRangeChange = '';
  String timeRangeValidate = '';
  String timeRangeSave = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepPurple, // Border color
                  width: 2.0, // Border width
                ),
                shape: BoxShape.circle, // To make it a circular border
              ),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: backgroundColor,
                          title: Column(
                            children: [
                              Text('QR Code'),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset("assets/svg/qr_code.png"),
                              SizedBox(height: 15),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 35,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0XFFC61236),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Done',
                                    style: (TextStyle(
                                        color: Colors.white, fontSize: 14)),
                                  )),
                                  //                            fillColor: Color(0XFFC61236),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(
                    Icons.qr_code,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
          )
        ],
        title: Center(
            child: Text(
          'Editing Event',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 970,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Basic Details',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Event Name',
                            style: TextStyle(
                                fontSize: 11, color: Color(0XFF5E5A80)),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          )
                        ],
                      ),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'The Great Gastby Party: Hyderabad',
                              hintStyle: TextStyle(fontSize: 10),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Start Date',
                            style: TextStyle(
                                fontSize: 11, color: Color(0XFF5E5A80)),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: DateTimePicker(
                                      type: DateTimePickerType.date,
                                      dateMask: 'MMM dd, yyyy',
                                      initialValue: DateTime.now().toString(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100),
                                      textAlignVertical: TextAlignVertical.center,
                                      style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0XFF5E5A80),
                                                ),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(bottom: 16),
                                        border: InputBorder.none,
                                        enabled: true,
                                        icon: Icon(
                                          Icons.calendar_today,
                                          size: 14,
                                          color: Color(0XFF5B46F4),
                                        ),
                                      ),
                                      selectableDayPredicate: (date) {
                                        // Disable weekend days to select from the calendar
                                        if (date.weekday == 6 || date.weekday == 7) {
                                          return false;
                                        }
                                        return true;
                                      },
                                      onChanged: (val) => print(val),
                                      validator: (val) {
                                        print(val);
                                        return null;
                                      },
                                      onSaved: (val) => print(val),
                                    ),
                              ),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Start Time',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: DateTimePicker(
                                  type: DateTimePickerType.time,
                                  //timePickerEntryModeInput: true,
                                  //controller: _controller4,
                                  initialValue: '', //_initialValue,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0XFF5E5A80),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(bottom: 10),
                                    hintText: "${DateTime.now().hour}:${DateTime.now().minute}",
                                    border: InputBorder.none,
                                    enabled: true,
                                    icon: Icon(
                                      Icons.access_time,
                                      size: 16,
                                      color: Color(0XFF5B46F4),
                                    ),
                                  ),
                                  locale: Locale('pt', 'BR'),
                                  // use24HourFormat: false,
                                  onChanged: (val) => setState(() => timeRangeChange = val),
                                  validator: (val) {
                                    setState(() => timeRangeValidate = val ?? '');
                                    return null;
                                  },
                                  onSaved: (val) => setState(() => timeRangeSave = val ?? ''),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'End Date',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: DateTimePicker(
                                  type: DateTimePickerType.date,
                                  dateMask: 'MMM dd, yyyy',
                                  initialValue: DateTime.now().toString(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2100),
                                  textAlignVertical: TextAlignVertical.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0XFF5E5A80),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(bottom: 16),
                                    border: InputBorder.none,
                                    enabled: true,
                                    icon: Icon(
                                      Icons.calendar_today,
                                      size: 14,
                                      color: Color(0XFF5B46F4),
                                    ),
                                  ),
                                  selectableDayPredicate: (date) {
                                    // Disable weekend days to select from the calendar
                                    if (date.weekday == 6 || date.weekday == 7) {
                                      return false;
                                    }
                                    return true;
                                  },
                                  onChanged: (val) => print(val),
                                  validator: (val) {
                                    print(val);
                                    return null;
                                  },
                                  onSaved: (val) => print(val),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'End Date',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 10),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: DateTimePicker(
                                  type: DateTimePickerType.time,
                                  //timePickerEntryModeInput: true,
                                  //controller: _controller4,
                                  initialValue: '', //_initialValue,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0XFF5E5A80),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(bottom: 10),
                                    hintText: "${DateTime.now().hour}:${DateTime.now().minute}",
                                    border: InputBorder.none,
                                    enabled: true,
                                    icon: Icon(
                                      Icons.access_time,
                                      size: 16,
                                      color: Color(0XFF5B46F4),
                                    ),
                                  ),
                                  locale: Locale('pt', 'BR'),
                                  // use24HourFormat: false,
                                  onChanged: (val) => setState(() => timeRangeChange = val),
                                  validator: (val) {
                                    setState(() => timeRangeValidate = val ?? '');
                                    return null;
                                  },
                                  onSaved: (val) => setState(() => timeRangeSave = val ?? ''),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event Locality',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                          Text('*',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 12)),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                // Set the selected option when the container is tapped
                                setSelectedOption('In Person');
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: selectedOption == 'In Person'
                                      ? Color(0XFF5B46F4)
                                      : Color(0XFFE3DFFF),
                                  border: Border.all(color: Color(0XFF5B46F4)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'In Person',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                // Set the selected option when the container is tapped
                                setSelectedOption('Online');
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: selectedOption == 'Online'
                                      ? Color(0XFF5B46F4)
                                      : Color(0XFFE3DFFF),
                                  border: Border.all(color: Color(0XFF5B46F4)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Online',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                // Set the selected option when the container is tapped
                                setSelectedOption('Mixed');
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: selectedOption == 'Mixed'
                                      ? Color(0XFF5B46F4)
                                      : Color(0XFFE3DFFF),
                                  border: Border.all(color: Color(0XFF5B46F4)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Mixed',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event location',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Taj Banjara,Hyderabad',
                              hintStyle: TextStyle(
                                  fontSize: 10, color: Color(0XFF5E5A80)),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Rd Number1',
                              helperStyle: TextStyle(
                                  fontSize: 10, color: Color(0XFF5E5A80)),
                              hintStyle: TextStyle(fontSize: 10),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'City',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Hyderabad',
                              hintStyle: TextStyle(
                                  fontSize: 10, color: Color(0XFF5E5A80)),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'State',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'TS',
                              hintStyle: TextStyle(
                                  fontSize: 10, color: Color(0XFF5E5A80)),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Country',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                          SizedBox(width: 153),
                          Text(
                            'Zip/Postal Code',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0XFFF5F4F9),
                                border:
                                    Border.all(color: Colors.deepPurpleAccent),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                'INDIA',
                                style: TextStyle(fontSize: 10),
                              )),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0XFFF5F4F9),
                                border:
                                    Border.all(color: Colors.deepPurpleAccent),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                '500034',
                                style: TextStyle(fontSize: 10),
                              )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event Timezone',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Choose',
                              hintStyle: TextStyle(
                                  fontSize: 10, color: Color(0XFF5E5A80)),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              suffixIcon: Icon(Icons.expand_more),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Livestream Provide',
                        style:
                            TextStyle(fontSize: 10, color: Color(0XFF5E5A80)),
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            firstRowSelected = !firstRowSelected;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: firstRowSelected
                                    ? Color(0XFF5B46F4)
                                    : Colors.transparent,
                                border: Border.all(
                                  color: Color(0XFF5E5A80),
                                  width: 1.5,
                                ),
                              ),
                              child: Icon(
                                Icons.circle_outlined,
                                size: 14,
                                color: Colors.transparent,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'FunZippy StreamingLivestream features by Funzippy!',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            secondRowSelected = !secondRowSelected;
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: secondRowSelected
                                    ? Color(0XFF5B46F4)
                                    : Colors.transparent,
                                border: Border.all(
                                  color: Color(0XFF5E5A80),
                                  width: 1.5,
                                ),
                              ),
                              child: Icon(
                                Icons.circle_outlined,
                                size: 14,
                                color: Colors.transparent,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Custom linkYou own livestream link\n(Zoom, Skype, Twitch, etc.)',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event Sub Category',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Your Livestream link',
                              hintStyle: TextStyle(
                                  fontSize: 10, color: Color(0XFF5E5A80)),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              // Category details
              Container(
                height: 580,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12),
                      Text(
                        'Category',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event Category',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Choose',
                              hintStyle: TextStyle(
                                  fontSize: 10, color: Color(0XFF5E5A80)),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              suffixIcon: Icon(Icons.expand_more),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event Sub Category',
                            style: TextStyle(
                                fontSize: 10, color: Color(0XFF5E5A80)),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Choose',
                              hintStyle: TextStyle(
                                  fontSize: 10, color: Color(0XFF5E5A80)),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              suffixIcon: Icon(Icons.expand_more),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Thumbnail Images',
                        style:
                            TextStyle(fontSize: 10, color: Color(0XFF5E5A80)),
                      ),
                      SizedBox(height: 20),
                      Stack(
                        children: [
                          Image.asset('assets/svg/rectangle_111.png'),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Icon(
                              Icons.cancel_outlined,
                              size: 25,
                              color: Color(0XFFC61236),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Event description',
                        style:
                            TextStyle(fontSize: 10, color: Color(0XFF5E5A80)),
                      ),
                      3.height,
                      Container(
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'RSVP means Please reply ( we are asking invitees/guests to reply if they are coming for event or attending the event , if so how many- so that you can plan your logistics around the count.) In Some cases like sri mantham or baby shower, please add gift registry to that guests can buy the items that are ',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          )),
                      SizedBox(height: 8),
                      Text(
                        'Event Tags',
                        style:
                            TextStyle(fontSize: 10, color: Color(0XFF5E5A80)),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Event Taggs',
                              hintStyle: TextStyle(fontSize: 10),
                              filled: true,
                              fillColor: Color(0XFFF5F4F9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 43,
                            child: Center(
                                child: Text(
                              'Party',
                                  style: TextStyle(fontSize: 8,color: Color(0XFFFF5C00)),
                            )),
                            decoration: BoxDecoration(
                                color: Color(0XFFFF5C00).withOpacity(.22),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 18,
                            width: 43,
                            child: Center(
                                child: Text(
                              'Event',
                                  style: TextStyle(fontSize: 8,color: Color(0XFFDC143C)),
                            )),
                            decoration: BoxDecoration(
                                color: Color(0XFFDC143C).withOpacity(.20),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 18,
                            width: 68,
                            child: Center(
                                child: Text(
                              'Hyderabad',
                                  style: TextStyle(fontSize: 8,color: Color(0XFF9747FF)),
                            )),
                            decoration: BoxDecoration(
                                color: Color(0XFF9747FF).withOpacity(.20),
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 18),
              Container(
                height: 35,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFF5F4F9), // Background color
                    primary: Colors.black, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side:
                          BorderSide(color: Color(0XFFC61236)), // Border color
                    ),
                  ),
                  child: Text(
                    'Save Event',
                    style: TextStyle(fontSize: 13, color: Color(0XFFC61236)),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 35,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.black, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side:
                          BorderSide(color: Color(0XFFC61236)), // Border color
                    ),
                  ),
                  child: Text(
                    'Preview Event',
                    style: TextStyle(fontSize: 13, color: Color(0XFFC61236)),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 35,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFC61236), // Background color
                    primary: Colors.black, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Border color
                    ),
                  ),
                  child: Text(
                    'Publish Event',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 35,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFF5F4F9), // Background color
                    primary: Colors.black, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side:
                          BorderSide(color: Color(0XFFC9C6E1)), // Border color
                    ),
                  ),
                  child: Text(
                    'Cancel Event',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setSelectedOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }
}
