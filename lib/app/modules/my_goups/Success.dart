import 'package:flutter/material.dart';

class SuccessFullScreen extends StatefulWidget {
  const SuccessFullScreen({super.key});

  @override
  State<SuccessFullScreen> createState() => _SuccessFullScreenState();
}

class _SuccessFullScreenState extends State<SuccessFullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      SafeArea(
        child: Column(children: [
          Container(
            height: 100,
            width: 100,
            child: Image.asset('assets/svg/success.svg'),
          )
        ],),
      ),);
  }
}
