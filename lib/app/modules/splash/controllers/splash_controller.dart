import 'package:fun_zippy/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/model/UserModel.dart';
import '../../sign_in/controllers/sign_in_controller.dart';

class SplashController extends GetxController {
  final getStorage = GetStorage();
  @override
  void onInit() {
    super.onInit();
    goToHome();
  }

  goToHome() {
    Future.delayed(
      Duration(seconds: 1),
      () {
        dynamic userMap = getStorage.read('user');
        if (userMap != null) {
          userModel = UserModel.fromJson(userMap);
        }

        if (userModel.token != null && userModel.token != '') {
          // offAllNamed means complete close all back screen
          Get.offAllNamed(Routes.HOME);
        } else {
          Get.offAllNamed(Routes.SIGN_IN);
        }
      },
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
