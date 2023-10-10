import 'package:get/get.dart';

import '../../create_event/controllers/create_event_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<HomeController>(
    //   () => HomeController(),
    // );

    Get.put(HomeController(), permanent: true);
    // Get.put(CreateEventController(), permanent: true);

    // Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => CreateEventController(), fenix: true);
  }
}
