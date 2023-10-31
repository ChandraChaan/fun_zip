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
    Map<String, dynamic> bodyData = {
      "emailAddress": "nmeda@openteqgroup.com",
      "tempPasswordToken": "754a",
      "password": "12345",
      "products": ["event"]
    };

    try {
      final response = await http.post(url, body: jsonEncode(bodyData),
          headers: {'Content-Type': 'application/json'});

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['products'] is List) {
          // Check if 'products' is a List in the response
          items.addAll(data['products'].cast<String>());
          Get.defaultDialog(title: "Success and API done");
        } else {
          // Handle a case where 'products' is not a List
          Get.defaultDialog(title: "API response format error");
        }
      } else {
        // Handle non-200 status code (e.g., server errors)
        Get.defaultDialog(title: "API request failed");
      }
    } catch (e) {
      // Handle exceptions that occur during the API call
      Get.defaultDialog(title: "Exception: $e");
    }
  }

  void increment() => count.value++;
}
