import 'package:flutter/material.dart';
import 'package:fun_zippy/app/extra/forsecond.dart';

class abcd extends StatefulWidget {
  const abcd({super.key});

  @override
  State<abcd> createState() => _abcdState();
}

class _abcdState extends State<abcd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100,
          width: 100,
          color: Colors.red,
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => second()));
              },
              child: Text('click')),
        ),
      ),
    );
  }
}
