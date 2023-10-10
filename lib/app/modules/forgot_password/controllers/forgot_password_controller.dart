import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/ApiResponseModel.dart';
import '../../../data/repository/user_repository.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/error_snackbar.dart';
import '../../../widgets/progress.dart';
import '../../otp_verification/controllers/otp_verification_controller.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  FocusNode phoneFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  bool phoneActive = true;
  String completePhoneNumber = '';

  @override
  void onInit() {
    super.onInit();
    phoneFocus.addListener(_onPhoneFocusChange);
    emailFocus.addListener(_onEmailFocusChange);
  }

  void _onPhoneFocusChange() {
    emailTextEditingController.clear();
    phoneActive = true;
  }

  void _onEmailFocusChange() {
    phoneTextEditingController.clear();
    completePhoneNumber = '';
    phoneActive = false;
  }

  ApiResponseModel apiResponseModel = ApiResponseModel();

  forgotPassword() async {
    var response;
    ProgressBar.start();

    try {
      if (phoneActive == true) {
        response = await UserRepository()
            .forgotPasswordByPhone(phone: completePhoneNumber);
      } else {
        response = await UserRepository()
            .forgotPasswordByEmail(email: emailTextEditingController.text);
      }

      apiResponseModel = ApiResponseModel.fromJson(response);

      if (apiResponseModel.success == true) {
        ProgressBar.stop();
        OtpVerificationController.to.phone = completePhoneNumber;
        OtpVerificationController.to.email = emailTextEditingController.text;
        OtpVerificationController.to.previousRoute = Routes.FORGOT_PASSWORD;
        Get.toNamed(Routes.OTP_VERIFICATION);
      } else {
        ProgressBar.stop();
        errorSnackbar(title: response['statusDescription'], desc: '');
      }
    } catch (e) {
      ProgressBar.stop();
      print(e);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
    phoneFocus.removeListener(_onPhoneFocusChange);

    phoneFocus.dispose();
    emailFocus.removeListener(_onEmailFocusChange);

    emailFocus.dispose();
  }
}
