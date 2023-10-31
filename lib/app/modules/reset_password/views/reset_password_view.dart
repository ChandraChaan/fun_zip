import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';

import '../../../../sathya/common_logo_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/reset_password_controller.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../config/images_links.dart';
import '../../../theme/colors.dart';
import '../../../theme/text_theme.dart';
import '../../../widgets/custom_buttons.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:http/http.dart' as http;

class ResetPasswordView extends GetView<ResetPasswordController> {
  ResetPasswordView({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: FormBuilder(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset(resetPasswordImage),
              ),
              20.height,
              Center(
                child: Column(
                  children: [
                    Text(
                      'Reset Password',
                      style: boldText.copyWith(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              20.height,
              Obx(() {
                return FormBuilderTextField(
                  name: 'password',
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.passwordTextEditingController,
                  obscureText: !controller.showPassword.value,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    hintStyle: normalText,
                    hintText: "Password",
                    fillColor: Colors.white,
                    suffixIcon: IconButton(onPressed: () {
                      controller.showPassword.value =
                          !controller.showPassword.value;
                    }, icon: Obx(() {
                      if (controller.showPassword.value) {
                        return Icon(
                          Icons.remove_red_eye_outlined,
                          size: 20,
                        );
                      } else {
                        return SvgPicture.asset(eyeIconImage);
                      }
                    })),
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(lockIconImage),
                    ),
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 14, minHeight: 10),
                  ),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                    ],
                  ),
                );
              }),
              20.height,
              Obx(() {
                return FormBuilderTextField(
                  name: 'confirm_password',
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.confirmPasswordTextEditingController,
                  obscureText: !controller.showConformPassword.value,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    hintStyle: normalText,
                    hintText: "Confirm Password",
                    fillColor: Colors.white,
                    suffixIcon: IconButton(onPressed: () {
                      controller.showConformPassword.value =
                          !controller.showConformPassword.value;
                    }, icon: Obx(() {
                      if (controller.showConformPassword.value) {
                        return Icon(
                          Icons.remove_red_eye_outlined,
                          size: 20,
                        );
                      } else {
                        return SvgPicture.asset(eyeIconImage);
                      }
                    })),
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(lockIconImage),
                    ),
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 14, minHeight: 10),
                  ),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                      (value) {
                        if (value !=
                            controller.passwordTextEditingController.text)
                          return 'password Not Match';
                        return null;
                      }
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: PrimaryButtonWidget(
            text: 'Confirm',
            onPressed: () {
              if (formKey.currentState!.saveAndValidate()) {
                //controller.signUp();
              }
              if (controller.passwordTextEditingController.text !=
                  controller.confirmPasswordTextEditingController.text) {
                controller.fetchDataFromApi(); // Get.arguments
              } else if (formKey.currentState!.saveAndValidate()) {
                //  controller.signUp();
              }
            }),
      ),
    );
  }
}
