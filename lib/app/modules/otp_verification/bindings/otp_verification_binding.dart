import 'package:get/get.dart';

import '../../reset_password/controllers/reset_password_controller.dart';
import '../controllers/otp_verification_controller.dart';

// import '../controllers/otp_verification_controller.dart';

class OtpVerificationBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<OtpVerificationController>(
    //   () => OtpVerificationController(),
    // );

    Get.put(OtpVerificationController(), permanent: true);
    Get.put(ResetPasswordController(), permanent: true);
  }
}
