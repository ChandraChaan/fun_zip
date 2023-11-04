import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/home/views/tabs/event_tab/event_tab.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:fun_zippy/sathya/my_events_screen/my_events.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../sathya/common_logo_widget.dart';
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
    MyEvents(),
    Text(
      'Index 3: Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return Center(
          child: _widgetOptions.elementAt(controller.selectedIndex.value),
        );
      });
  }
}
