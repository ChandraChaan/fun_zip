import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../data/model/ApiResponseModel.dart';
import '../../../data/repository/user_repository.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/error_snackbar.dart';
import '../../../widgets/progress.dart';
import '../../reset_password/controllers/reset_password_controller.dart';

class OtpVerificationController extends GetxController {
  static OtpVerificationController get to => Get.find();
  TextEditingController otpTextEditingController = TextEditingController();

  String phone = '';
  String email = '';
  String previousRoute = '';

  ApiResponseModel apiResponseModel = ApiResponseModel();
  final getStorage = GetStorage();

  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    // getOtp();
  }

  getOtp() async {
    var response;
    // ProgressBar.start();
    loading.value = true;

    try {
      // if (phone != '' && phone.isNotEmpty) {
      //   response = await UserRepository().getOTPByPhone(phone: phone);
      // }

      // if (email != '' && email.isNotEmpty) {
      //   response = await UserRepository().getOTPByEmail(email: email);
      // }

      response = await UserRepository().getOTPByEmail(email: email);

      apiResponseModel = ApiResponseModel.fromJson(response);

      if (apiResponseModel.success == true) {
        // ProgressBar.stop();
        loading.value = false;

        successSnackbar(title: 'otp has been sent', desc: '');
      } else {
        // ProgressBar.stop();
        loading.value = false;
        errorSnackbar(title: response['statusDescription'], desc: '');
      }
    } catch (e) {
      loading.value = false;

      // ProgressBar.stop();
      print(e);
    }
  }

  verifyPhoneOTP() async {
    var response;
    ProgressBar.start();

    try {
      // if (phone != '' && phone.isNotEmpty) {
      //   response = await UserRepository()
      //       .verifyPhoneOTP(phone: phone, otp: otpTextEditingController.text);
      // } else {
      //   response = await UserRepository()
      //       .verifyPhoneEmail(email: email, otp: otpTextEditingController.text);
      // }

      response = await UserRepository()
          .verifyPhoneEmail(email: email, otp: otpTextEditingController.text);
      ResetPasswordController.to.phone = phone;
      ResetPasswordController.to.email = email;
      ResetPasswordController.to.otp = otpTextEditingController.text;
      apiResponseModel = ApiResponseModel.fromJson(response);
      otpTextEditingController.clear();

      if (apiResponseModel.success == true) {
        ProgressBar.stop();

        if (previousRoute == Routes.FORGOT_PASSWORD) {
          Get.toNamed(Routes.RESET_PASSWORD);
        } else if (previousRoute == Routes.SIGN_UP) {
          // get user data
          // UserModel userModel = UserModel();
          // getStorage.write('user', userModel.toJson());

          Get.offAllNamed(Routes.HOME);
        }
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
    otpTextEditingController.dispose();
    phone = '';
    email = '';
    previousRoute = '';
  }
}
