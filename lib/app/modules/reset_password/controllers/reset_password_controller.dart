import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fun_zippy/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ResetPasswordController extends GetxController {
  static ResetPasswordController get to => Get.find();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  String phone = '';
  String email = '';
  String otp = '';

  RxBool showPassword = false.obs;
  RxBool showConformPassword = false.obs;

  //TODO: Implement ResetPasswordController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // API call
  Future<void> resetPwApi() async {
    final url = Uri.parse('https://funzippy.com/user/resetPassword');
    Map<String, dynamic> bodyData = {
      "emailAddress": "${email}",
      "phoneNumber": "${phone}",
      "tempPasswordToken": "${otp}",
      "password": "${passwordTextEditingController.text}"
    };

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(bodyData), // Convert the bodyData to a JSON string
    );
print(response.body);
    if (response.statusCode == 200) {
      // Get.defaultDialog(title: "Success and API done");
      Get.toNamed(Routes.SIGN_IN);
    } else {
      Get.defaultDialog(title: "Failure");
      throw Exception('Failed to load data');
    }
  }

  void increment() => count.value++;
}
