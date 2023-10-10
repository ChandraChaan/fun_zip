import 'package:flutter/material.dart';

RoundedRectangleBorder roundedBorder(
    {required double radius, Color? color, double? width}) {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(radius),
    side: BorderSide(color: color ?? Colors.white, width: width ?? 1),
  );
}
