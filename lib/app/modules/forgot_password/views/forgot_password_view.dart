import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import 'package:get/get.dart';

import '../../../config/images_links.dart';
import '../../../theme/colors.dart';
import '../../../theme/text_theme.dart';
import '../../../widgets/custom_buttons.dart';
import '../../../widgets/error_snackbar.dart';
import '../controllers/forgot_password_controller.dart';
import 'components/EmailTextfieldWidget.dart';
import 'components/PhoneTextfieldWidget.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  ForgotPasswordView({Key? key}) : super(key: key);
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
                child: SvgPicture.asset(forgePasswordImage),
              ),
              20.height,
              Center(
                child: Column(
                  children: [
                    Text(
                      'Forgot Password',
                      style: boldText.copyWith(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              20.height,
              PhoneTextfieldWidget(controller: controller),
              20.height,
              Center(
                child: Text(
                  'OR',
                  style: normalText,
                  textAlign: TextAlign.center,
                ),
              ),
              20.height,
              EmailTextfieldWidget(controller: controller),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: PrimaryButtonWidget(
            text: 'Next',
            onPressed: () {
              if (controller.phoneTextEditingController.text.isEmpty &&
                  controller.emailTextEditingController.text.isEmpty) {
                errorSnackbar(title: 'Please Input Phone or Email', desc: '');
              } else {
                controller.forgotPassword();
              }
            }),
      ),
    );
  }
}
