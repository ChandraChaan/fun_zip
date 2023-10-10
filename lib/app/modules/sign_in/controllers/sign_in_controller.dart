import 'package:flutter/widgets.dart';
import 'package:fun_zippy/app/data/model/UserModel.dart';
import 'package:fun_zippy/app/widgets/error_snackbar.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/repository/user_repository.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/progress.dart';

UserModel userModel = UserModel();

class SignInController extends GetxController {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  RxBool phoneTextfieldActive = true.obs;
  String completePhoneNumber = '';
  RxBool showPassword = false.obs;

  final getStorage = GetStorage();

  // UserModel userModel = UserModel();

  @override
  void onInit() {
    super.onInit();
  }

  signIn() async {
    ProgressBar.start();
    var response;
    try {
      if (phoneTextfieldActive.value == true) {
        response = await UserRepository().signInWithPhone(
            phone: completePhoneNumber,
            password: passwordTextEditingController.text);
      } else {
        response = await UserRepository().signInWthEmail(
            email: emailTextEditingController.text,
            password: passwordTextEditingController.text);
      }

      if (response['success'] == true) {
        ProgressBar.stop();

        userModel = UserModel.fromJson(response['data']);

        getStorage.write('user', userModel.toJson());

        Get.offAllNamed(Routes.HOME);
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
