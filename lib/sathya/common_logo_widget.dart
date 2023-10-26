import 'package:flutter/material.dart';

class LogoCommon extends StatelessWidget {
  final Widget child;
  const LogoCommon({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(child: Align(alignment:Alignment.topLeft,child: Text('LOGO'))),
          Expanded(child: child)
        ],
      ),
    );
  }
}
