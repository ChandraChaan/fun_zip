import 'package:flutter/material.dart';
import 'package:fun_zippy/app/routes/app_pages.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/widgets/full_linerStepIndicator.dart';
import 'package:get/get.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Summary',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'Group Name',
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
                      hintText: 'Group Name',
                      hintStyle: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Category 1',
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
                      suffixIcon: Image.asset('assets/svg/expand.png'),
                      hintText: 'Choose',
                      hintStyle: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ),
              Text(
                'Category 2',
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
                      suffixIcon: Image.asset('assets/svg/expand.png'),
                      hintText: 'Choose',
                      hintStyle: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ),
              Text(
                'Category 3',
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
                      hintText: 'Choose',
                      suffixIcon: Image.asset('assets/svg/expand.png'),
                      hintStyle: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ),
              Text(
                'City',
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
                      hintText: 'City',
                      hintStyle: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ),
              Text(
                'Metro',
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
                      hintText: 'Metro',
                      hintStyle: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ),
              Text(
                'Age Group',
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
                      hintText: 'Age Group',
                      hintStyle: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              Container(
                // height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Description',
                      hintStyle: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.CreateGroupSecond);
                },
                child: Center(
                  child: Container(
                    height: 35,
                    width: 210,
                    decoration: BoxDecoration(
                      color: Color(0XFFC61236),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style: (TextStyle(color: Colors.white, fontSize: 14)),
                      ),
                    ),
                    //fillColor: Color(0XFFC61236),
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
