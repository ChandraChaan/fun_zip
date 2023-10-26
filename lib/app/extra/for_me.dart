import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Phone Number Widget'),
        ),
        body: Center(
          child: PhoneNumberWidget(),
        ),
      ),
    );
  }
}

class PhoneNumberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Text(
            '+1', // Replace with your phone code
            style: TextStyle(fontSize: 18.0),
          ),
          VerticalDivider(
            width: 16.0,
            thickness: 2.0,
          ),
          Text(
            '555-123-4567', // Replace with your phone number
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
