import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension emptySpace on num {
  SizedBox get height => SizedBox(height: toDouble());

  SizedBox get width => SizedBox(width: toDouble());
}

extension ScreenHeight on num {
  double get percentHeight => toDouble() * Get.height / 100;
  double get percentWidth => toDouble() * Get.width / 100;
}
