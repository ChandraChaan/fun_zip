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
      "products": ["event"],
    };
    final response = await http.post(url, body: bodyData);
    debugPrint('response ${response.body}');

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      items.add(apiCall.fromJson(data));
      Get.defaultDialog(title: "Success and API done");
      print(items.toString());
      // Get.toNamed(Routes.SIGN_IN); // If you have defined 'Routes.SIGN_IN'
    } else {
      Get.defaultDialog(title: "Failure");
      throw Exception('Failed to load data');
    }
  }

  void increment() => count.value++;
}


class apiCall {
  String? emailAddress;
  String? tempPasswordToken;
  String? password;
  List<String>? products;

  apiCall(
      {this.emailAddress,
        this.tempPasswordToken,
        this.password,
        this.products});

  apiCall.fromJson(Map<String, dynamic> json) {
    emailAddress = json['emailAddress'];
    tempPasswordToken = json['tempPasswordToken'];
    password = json['password'];
    products = json['products'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['emailAddress'] = this.emailAddress;
    data['tempPasswordToken'] = this.tempPasswordToken;
    data['password'] = this.password;
    data['products'] = this.products;
    return data;
  }
}