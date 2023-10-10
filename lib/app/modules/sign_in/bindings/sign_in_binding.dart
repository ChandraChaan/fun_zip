import 'package:fun_zippy/app/modules/otp_verification/controllers/otp_verification_controller.dart';
import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<SignInController>(
    //   () => SignInController(),
    // );

    Get.put(SignInController(), permanent: true);
    Get.put(OtpVerificationController(), permanent: true);
  }
}
