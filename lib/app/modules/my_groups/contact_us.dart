import 'package:flutter/material.dart';
import 'package:fun_zippy/app/widgets/CommonDropdownWidget.dart';
import 'package:fun_zippy/app/widgets/CommonTextField.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
        child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'First Name',
                style: TextStyle(fontSize: 11),
              ),
              Text(
                '*',
                style: TextStyle(fontSize: 11,color: Colors.red),
              ),
            ],
          ),

          Container(
            height: 40,
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
                style: TextStyle(fontSize: 11, color: Colors.red),
              ),
            ],
          ),
          Container(
            height: 40,
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
                'Email',
                style: TextStyle(fontSize: 11),
              ),
              Text(
                '*',
                style: TextStyle(fontSize: 11,color: Colors.red),
              ),
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'johansson@gmail.com',
                  hintStyle: TextStyle(fontSize: 11),
                ),
              ),
            ),
          ),
          Text(
            'Event/Organization',
            style: TextStyle(fontSize: 11),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Event/Organization',
                  hintStyle: TextStyle(fontSize: 11),
                ),
              ),
            ),
          ),
          Text(
            'What can we help you with?',
            style: TextStyle(fontSize: 11),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'What can we help you with?',
                  hintStyle: TextStyle(fontSize: 11),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'What can we help you with?',
                style: TextStyle(fontSize: 11),
              ),
              Text(
                '*',
                style: TextStyle(fontSize: 11,color: Colors.red),
              ),
            ],
          ),
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write Here..',
                  hintStyle: TextStyle(fontSize: 11),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(
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
                  'Send',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
            ),
          ),

        ],
      ),
    ));
  }
}