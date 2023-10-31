import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fun_zippy/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ResetPasswordController extends GetxController {
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

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

// Type name value
  List<dynamic> items = [];

  // API call
  Future<void> fetchDataFromApi() async {
    final url = Uri.parse('https://funzippy.com/user/resetPassword');
    Map <String,dynamic> bodyData = {
      "emailAddress": "nmeda@openteqgroup.com",
      "tempPasswordToken": "754a",
      "password": "12345",
      "products": ["event"]
    };
    final response = await http.post(url, body: bodyData);

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON data
      final data = json.decode(response.body);
      // list adding from API
      items.addAll(data['products']);
      Get.defaultDialog(title: "success");
      print(items.toString());
      //Get.toNamed(Routes.SIGN_IN);
    } else {
      // If the server did not return a 200 OK response, throw an exception
      Get.defaultDialog(title: "failure");
      throw Exception('Failed to load data');
    }
  }

  void increment() => count.value++;
}
