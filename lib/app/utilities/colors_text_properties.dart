import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Colors.blue;
  static const Color deepBule = Color.fromRGBO(72, 78, 200, 10.0);
  static const Color secondaryColor = Colors.green;
  static const Color textColor = Colors.black;
  static const Color deepPurple = Colors.deepPurple;
  static const Color grey = Colors.grey;
  static const Color red = Colors.red;
  static const Color white = Colors.white70;
  static const Color deepWhite = Colors.white;
  static const Color lightPurple = Color.fromRGBO(102, 102, 255, 10.0);
  static const Color lightGrey = Color.fromRGBO(192, 192, 192, 10.0);
  static const Color customGrey = Color.fromRGBO(224, 224, 224, 10.0);
// Define your other colors here
}

class AppTextStyles {
  static const TextStyle appBarTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    color: AppColors.textColor,
  );
  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 16.0,
    color: AppColors.primaryColor,
  );
  static const TextStyle lineBoldTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static const TextStyle headingTextStyle = TextStyle(
    fontSize: 18.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle lineText10Style = TextStyle(
    fontSize: 10.0,
    color: AppColors.grey,
    fontWeight: FontWeight.w100,
  );
  static const TextStyle lineText10WhiteStyle = TextStyle(
    fontSize: 10.0,
    color: AppColors.deepWhite,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle lineTextStyle = TextStyle(
    fontSize: 14.0,
    color: AppColors.grey,
    fontWeight: FontWeight.w100,
  );
  static const TextStyle line14TextStyle = TextStyle(
    fontSize: 14.0,
    color: AppColors.grey,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle lineText14Style = TextStyle(
    fontSize: 14.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.w100,
  );
  static const TextStyle lineText14BoldStyle = TextStyle(
    fontSize: 14.0,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle lineText12Style = TextStyle(
    fontSize: 12.0,
    color: AppColors.grey,
    fontWeight: FontWeight.w100,
  );
  static const TextStyle lineText12BoldStyle = TextStyle(
    fontSize: 12.0,
    color: AppColors.lightGrey,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle lineText12PurpleStyle = TextStyle(
    fontSize: 12.0,
    color: AppColors.deepPurple,
    fontWeight: FontWeight.normal,
  );
}
