import 'package:get/get.dart';

import '../../otp_verification/controllers/otp_verification_controller.dart';
import '../controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<SignUpController>(
    //   () => SignUpController(),
    // );

    Get.put(SignUpController(), permanent: true);
    Get.put(OtpVerificationController(), permanent: true);
  }
}
