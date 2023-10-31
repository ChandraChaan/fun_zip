import 'package:get/get.dart';

import '../../otp_verification/controllers/otp_verification_controller.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetPasswordController>(
      () => ResetPasswordController(),
    );
  }
}
