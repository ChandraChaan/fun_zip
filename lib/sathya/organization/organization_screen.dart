import 'package:flutter/material.dart';

class OrganizationScreen extends StatelessWidget {
  const OrganizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        height: 680,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Edit Your Personal Settings',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                'First Name',
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
                      hintText: 'Scarlett',
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              Text(
                'First Name',
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
                      hintText: 'Scarlett',
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              Text(
                'First Name',
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
                      hintText: 'Scarlett',
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              Text(
                'First Name',
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
                      hintText: 'Scarlett',
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              Text(
                'First Name',
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
                      hintText: 'Scarlett',
                      hintStyle: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              Text(
                'First Name',
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
                      hintText: 'Scarlett',
                      hintStyle: TextStyle(fontSize: 11),
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
