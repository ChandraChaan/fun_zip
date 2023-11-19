import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';

import '../common_data/common_text.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Container(
            height: 560,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text10(
                      'First Name',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text10(
                      '*',
                      style: TextStyle(color: Colors.red),
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
                        hintText: "First Name",
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text10(
                      'Last Name',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text10(
                      '*',
                      style: TextStyle(color: Colors.red),
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
                        hintText: "Last Name",
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text10(
                      'Email',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text10(
                      '*',
                      style: TextStyle(color: Colors.red),
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
                        hintText: "Email",
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text10(
                      'Event/Organization',
                      style: TextStyle(fontSize: 12),
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
                        hintText: "Event/Organization",
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                Text10(
                  'What can we help you with?',
                  style: TextStyle(fontSize: 12),
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
                        hintText: "What can we help you with?",
                        suffixIcon: Image.asset("assets/svg/expand.png"),
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text10(
                      'What can we help you with?',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text10(
                      '*',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text10('Write Here..'),
                      ),
                    ),
                  ),
                ),
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
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
