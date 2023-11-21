import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:get/get.dart';

import '../../theme/colors.dart';

class CreateGroupThree extends StatefulWidget {
  const CreateGroupThree({super.key});

  @override
  State<CreateGroupThree> createState() => _CreateGroupThreeState();
}

class _CreateGroupThreeState extends State<CreateGroupThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
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
          ),
        ),
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
                'Members',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                'Summary/Thumbnail Picture',
                style: TextStyle(fontSize: 11),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 90,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/svg/upload.png'),
                      Text10('Drop logo/Image here to'),
                      Text10('Upload'),
                    ],
                  ),
                ),
              ),
              Text(
                'Summary/Thumbnail Picture',
                style: TextStyle(fontSize: 11),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 90,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/svg/upload.png'),
                      Text10('Drop logo/Image here to'),
                      Text10('Upload'),
                    ],
                  ),
                ),
              ),
              Text(
                'External Videos',
                style: TextStyle(fontSize: 11),
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
                      hintText: 'Enter URL',
                      suffixIcon: Image.asset('assets/svg/add.png'),
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              Text(
                'External Photo',
                style: TextStyle(fontSize: 11),
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
                      hintText: 'Enter URL',
                      suffixIcon: Image.asset('assets/svg/add.png'),
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
