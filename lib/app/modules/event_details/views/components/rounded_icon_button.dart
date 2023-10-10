import 'package:flutter/material.dart';

class RoundedIconButtonWidget extends StatelessWidget {
  const RoundedIconButtonWidget({super.key, required this.icon});
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1)),
      child: Padding(padding: const EdgeInsets.all(6.0), child: icon),
    );
  }
}
