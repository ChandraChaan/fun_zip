import 'package:flutter/material.dart';

import '../../theme/colors.dart';


class LogoCommon extends StatelessWidget {
  final Widget child;

  const LogoCommon({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SafeArea(
              child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
                height: 50,
                child: Image.asset('assets/svg/logo_512.png')),
          )),
          Expanded(child: child)
        ],
      ),
    );
  }
}
