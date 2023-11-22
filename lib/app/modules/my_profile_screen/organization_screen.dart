import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';

class OrganizationScreen extends StatelessWidget {
  const OrganizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: Image.asset('assets/svg/bars_2.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
          )
        ],
        title: Center(
          child: Text(
            'My Profile',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Container(
            height: 710,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details that apply across your events and venues',
                    style: TextStyle(fontSize: 12),
                  ),
                  Row(
                    children: [
                      Text(
                        'Organization Name',
                        style: TextStyle(fontSize: 11),
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
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 11),
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
                  Text(
                    'Website',
                    style: TextStyle(fontSize: 11),
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
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 11),
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
                          hintText: 'Email',
                          hintStyle: TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 11),
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
                  Text(
                    'Event Category',
                    style: TextStyle(fontSize: 11),
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
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Organization/Business Tags',
                    style: TextStyle(fontSize: 11),
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
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(children: [
                      Text(
                        'Organization/Business Tags',
                        style: TextStyle(fontSize: 11),
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
                    ],),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
