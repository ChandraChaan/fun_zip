import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/widgets/CommonDropdownWidget.dart';
import 'package:fun_zippy/app/widgets/CommonTextField.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';

class ContactUs extends StatefulWidget {
  final bool isSfald;

  const ContactUs({super.key, this.isSfald = false});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return CommonScafold(
        title: 'Contact Us',
        titleChild: Text('Contact Us',
            style: TextStyle(color: Colors.black, fontSize: 20)),
        remoNavChild: true,
        boardCast: false,
        child: Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'First Name',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '*',
                  style: TextStyle(fontSize: 12, color: Colors.red),
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
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '*',
                  style: TextStyle(fontSize: 12, color: Colors.red),
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
                  'Email',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '*',
                  style: TextStyle(fontSize: 12, color: Colors.red),
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
                    hintText: 'johansson@gmail.com',
                    hintStyle: TextStyle(fontSize: 11),
                  ),
                ),
              ),
            ),
            Text(
              'Event/Organization',
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
                    hintText: 'Event/Organization',
                    hintStyle: TextStyle(fontSize: 11),
                  ),
                ),
              ),
            ),
            Text(
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
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '*',
                  style: TextStyle(fontSize: 12, color: Colors.red),
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
              onTap: () {},
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
      ),
    ));
  }

  Widget ForBuilderEvent({required Widget chil}) {
    return widget.isSfald
        ? CommonScafold(
      title: 'My Tickets',
      selectedIndex: 3,
      navChild: true,
      child: chil,
    )
        : chil;
  }
}
