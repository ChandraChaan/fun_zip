import 'package:flutter/material.dart';
import 'package:get/get.dart';

successSnackbar({required String title, required String desc}) {
  Get.snackbar(title, '$desc', colorText: Colors.green);
}

errorSnackbar({required String title, required String desc}) {
  Get.snackbar(title, '$desc', colorText: Colors.red);
}
