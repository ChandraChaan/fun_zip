import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../theme/colors.dart';

menuItemWidget({required String label, required String image}) {
  return BottomNavigationBarItem(
    label: label,
    icon: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(image, color: textColor),
    ),
    activeIcon: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(
        image,
        color: Colors.red,
      ),
    ),
  );
}
