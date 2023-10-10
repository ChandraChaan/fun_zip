import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:get/get.dart';

import '../theme/text_theme.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? radius;
  final Color? color;
  const PrimaryButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    this.radius,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10),
          elevation: 0,
          backgroundColor: color ?? redColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 20),
            side: BorderSide(color: Colors.black, width: .6),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: buttonText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class SmallButtonWidget extends StatelessWidget {
  const SmallButtonWidget({
    super.key,
    required this.height,
    required this.radius,
    required this.child,
  });

  final double height;
  final double radius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        child: child,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.all(0),
          backgroundColor: Colors.deepOrange.shade50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}

class SmallWhiteBackgroundButton extends StatelessWidget {
  const SmallWhiteBackgroundButton({
    super.key,
    required this.height,
    required this.radius,
    required this.child,
    required this.borderColor,
    this.onPressed,
  });

  final double height;
  final double radius;
  final Widget child;
  final Color borderColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(left: 8, right: 8),
            elevation: 0,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: BorderSide(color: borderColor, width: 1),
            ),
          ),
          onPressed: onPressed ?? () {},
          child: child),
    );
  }
}
