import 'package:flutter/material.dart';

class Text10 extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text10(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10,
        color: Color(0XFF5E5A80)// Set the font size to 10
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text12 extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text12(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 12,
          color: Color(0XFF5E5A80)// Set the font size to 10
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}

class Text12Black extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;

  const Text12Black(this.text, {this.style, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 12,
          color: Colors.black// Set the font size to 10
      ).merge(style), // Merge with any additional style provided
      maxLines: maxLines,
    );
  }
}