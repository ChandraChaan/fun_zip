import 'package:get/get.dart';

import '../../otp_verification/controllers/otp_verification_controller.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<ForgotPasswordController>(
    //   () => ForgotPasswordController(),
    // );
    Get.put(ForgotPasswordController(), permanent: true);
    Get.put(OtpVerificationController(), permanent: true);
  }
}
