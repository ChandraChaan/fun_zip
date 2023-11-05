import 'package:flutter/material.dart';

class SuccessFullScreen extends StatefulWidget {
  const SuccessFullScreen({super.key});

  @override
  State<SuccessFullScreen> createState() => _SuccessFullScreenState();
}

class _SuccessFullScreenState extends State<SuccessFullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset('assets/svg/success.png'),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Successful',
              style: TextStyle(fontSize: 16),
            ),
            Text('Your have created a group\nsuccessfully'),
            SizedBox(height: 40,),
            Container(
              height: 35,
              width: 90,
              color: Colors.red,
              child: Text('Done'),
            )
          ],
        ),
      ),
    );
  }
}
