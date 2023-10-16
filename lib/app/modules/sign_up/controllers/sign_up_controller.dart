
import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/otp_verification/controllers/otp_verification_controller.dart';
import 'package:fun_zippy/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../data/model/ApiResponseModel.dart';
import '../../../data/repository/user_repository.dart';
import '../../../widgets/error_snackbar.dart';
import '../../../widgets/progress.dart';


class SignUpController extends GetxController {
  static OtpVerificationController get to => Get.find();

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

  String completePhoneNumber = '';

  RxBool showPassword = false.obs;
  RxBool showConformPassword = false.obs;

  ApiResponseModel apiResponseModel = ApiResponseModel();
  @override
  void onInit() {
    super.onInit();
    // getCountryCode();
    // getCountry();
  }

  // Future getCountry() async {
  //   try {
  //     final response = await Dio().postUri(
  //       Uri(path: 'http://ip-api.com/json'),
  //       options: Options(
  //         headers: {"Content-Type": "application/x-www-form-urlencoded"},
  //       ),
  //     );

  //     return response.data;
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // getCountryCode() async {
  //   String localeName = Platform.localeName;
  //   print(localeName);
  //   await CountryCodes
  //       .init(); // Optionally, you may provide a `Locale` to get countrie's localizadName

  //   final Locale? deviceLocale = CountryCodes.getDeviceLocale();
  //   print(deviceLocale!.languageCode); // Displays en
  //   print(deviceLocale.countryCode); // Displays US

  //   final CountryDetails details = CountryCodes.detailsForLocale();
  //   print(details.alpha2Code); // Displays alpha2Code, for example US.
  //   print(details.dialCode); // Displays the dial code, for example +1.
  //   print(
  //       details.name); // Displays the extended name, for example United States.
  //   print(details
  //       .localizedName); // Displays the extended name based on device's language (or other, if provided on init)
  // }

  signUp() async {
    ProgressBar.start();

    try {
      var response = await UserRepository().signUp(
          email: emailTextEditingController.text,
          password: passwordTextEditingController.text,
          name: nameTextEditingController.text,
          phone: completePhoneNumber);

      apiResponseModel = ApiResponseModel.fromJson(response);

      if (apiResponseModel.success == true) {
        ProgressBar.stop();
        OtpVerificationController.to.phone = completePhoneNumber;
        OtpVerificationController.to.email = emailTextEditingController.text;
        OtpVerificationController.to.previousRoute = Routes.SIGN_UP;
        Get.toNamed(Routes.OTP_VERIFICATION);
        OtpVerificationController.to.getOtp();
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
}
