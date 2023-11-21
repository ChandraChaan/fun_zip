import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/common_data/common_phone_number.dart';
import 'package:get/get.dart';

import '../../theme/colors.dart';
import '../common_data/common_phone_numberwhite.dart';

class CreateGroupSecond extends StatefulWidget {
  const CreateGroupSecond({super.key});

  @override
  State<CreateGroupSecond> createState() => _CreateGroupSecondState();
}

class _CreateGroupSecondState extends State<CreateGroupSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
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
        title: Center(
            child: Text(
          'Create a Group',
          style: TextStyle(color: Colors.black, fontSize: 18),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Media',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'First Name',
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    '*',
                    style: TextStyle(fontSize: 10, color: Colors.red),
                  ),
                ],
              ),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'First Name',
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Last Name',
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    '*',
                    style: TextStyle(fontSize: 10, color: Colors.red),
                  ),
                ],
              ),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Last Name',
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Email Address',
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    '*',
                    style: TextStyle(fontSize: 10, color: Colors.red),
                  ),
                ],
              ),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              PhoneNumberWhite(),
              Row(
                children: [
                  Text(
                    'Admin',
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    '*',
                    style: TextStyle(fontSize: 10, color: Colors.red),
                  ),
                ],
              ),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Admin',
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0XFFC61236),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Container(
                    height: 35,
                    width: 210,
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
