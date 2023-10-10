// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fun_zippy/app/config/images_links.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

class LoginCommonButtonWidget extends StatelessWidget {
  const LoginCommonButtonWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final Widget icon;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10),
        elevation: 0,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.black, width: .6),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          10.width,
          Text(
            title,
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 12, color: Color(0xFF5E5A80)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
