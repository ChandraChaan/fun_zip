import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/common_data/common_phone_number.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class OrganizationScreen extends StatelessWidget {
  const OrganizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        elevation: 5,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Get.toNamed(Routes.MyProfile);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white, // Border color
                    width: 2.0, // Border width
                  ),
                  shape: BoxShape.circle, // To make it a circular border
                ),
                child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/svg/ellipse_2.png')),
              ),
            ),
          )
        ],
        title: Center(
          child: Text(
            'Organization',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 700,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Details that apply across your events and venues',
                        style: TextStyle(fontSize: 12),
                      ),
                      Row(
                        children: [
                          Text10(
                            'Organization Name',
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '6160',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Text10(
                        'Description',
                      ),
                      Container(
                        height: 125,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Description',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Text10(
                        'Website',
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Website',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Text10('Email'),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      PhoneNumber(),
                      Text10(
                        'Event Category',
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Event Category',
                              hintStyle: TextStyle(fontSize: 11),
                              suffixIcon: Image.asset('assets/svg/expand.png')
                            ),
                          ),
                        ),
                      ),
                      Text10(
                        'Organization/Business Tags',
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Organization/Business Tags',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 340,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Social',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text10(
                        'Facebook',
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Facebook',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Text10(
                        'Instagram',
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Instagram',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Text10(
                        'Twitter',
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Twitter',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                      Text10(
                        'Linkedin',
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0XFFF5F4F9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Linkedin',
                              hintStyle: TextStyle(fontSize: 11),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFFC61236),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                        'Save',
                        style: (TextStyle(color: Colors.white, fontSize: 14)),
                      )),
                  //                            fillColor: Color(0XFFC61236),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
