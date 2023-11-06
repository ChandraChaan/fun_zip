import 'package:flutter/material.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

class QrErrorScreen extends StatelessWidget {
  const QrErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Image.asset('assets/svg/rectangle_87.png'),
              ),
            ),
            20.height,
            Text(
              'Successful',
              style: TextStyle(fontSize: 18),
            ),
            10.height,
            Center(
              child: Text(
                  'It is a long established fact that a reader will be distracted by the readable content.'),
            ),
            Container(
              height: 30,
              child: TextButton(
                onPressed: () {
                  // Add your onPressed functionality here
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0XFFC61236), // Background color
                  primary: Colors.black, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    // Border color
                  ),
                ),
                child: Text('Error', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
