import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';

import 'package:get/get.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/colors.dart';
import '../../controllers/home_controller.dart';
import 'BottomNavigationBarItemWidget.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        selectedLabelStyle: normalText.copyWith(fontSize: 10),
        unselectedFontSize: 10,
        items: <BottomNavigationBarItem>[
          menuItemWidget(
            label: 'Home',
            image: homeButtonNavigationIconImage,
          ),
          menuItemWidget(
            label: 'Create Event',
            image: plusButtonNavigationIconImage,
          ),
          menuItemWidget(
            label: 'My Event',
            image: eventButtonNavigationIconImage,
          ),
          menuItemWidget(
            label: 'My Profile',
            image: profileButtonNavigationIconImage,
          ),
        ],
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: Colors.red,
        unselectedItemColor: textColor,
        unselectedLabelStyle: normalText.copyWith(fontSize: 10),
        showUnselectedLabels: true,
        onTap: controller.onItemTapped,
      ),
    );
  }
}
