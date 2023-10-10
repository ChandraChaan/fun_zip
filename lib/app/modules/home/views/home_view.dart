import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/home/views/tabs/event_tab/event_tab.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/colors.dart';
import '../../create_event/views/create_event_view.dart';
import '../controllers/home_controller.dart';
import 'components/BottomNavigationBarWidget.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  static const List<Widget> _widgetOptions = <Widget>[
    EventTab(),
    CreateEventView(),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        drawer: Drawer(
          elevation: 0,
          child: ElevatedButton(
              onPressed: () {
                GetStorage().remove('user');
                Get.offAllNamed(Routes.SIGN_IN);
              },
              child: Text('logout')),
        ),
        body: Obx(() {
          return Center(
            child: _widgetOptions.elementAt(controller.selectedIndex.value),
          );
        }),
        bottomNavigationBar: BottomNavigationBarWidget(controller: controller),
      ),
    );
  }
}
