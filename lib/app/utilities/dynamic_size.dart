import 'package:flutter/material.dart';

class SizeGet {
  static MediaQueryData? _mediaQueryData;
  static double? screenwidth;
  static double? screenheight;
  static double? defaultsize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenheight = _mediaQueryData!.size.height;
    screenwidth = _mediaQueryData!.size.width;
    orientation = _mediaQueryData!.orientation;
  }

  static double getProportionHeight(double inputHeight) {
    double? screenHeight = screenheight;
    return (inputHeight / 812.0) * screenHeight!;
  }

  static double getProportionWidth(double inputWidth) {
    double? screenWidth = screenwidth;
    return (inputWidth / 375.0) * screenWidth!;
  }
}
