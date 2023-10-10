import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../controllers/sign_up_controller.dart';

class ConfirmPasswordWidget extends StatelessWidget {
  const ConfirmPasswordWidget({
    super.key,
    required this.controller,
  });

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
            icon: SvgPicture.asset(SearchIconTextFieldIconImage),
          ),
          prefixIconConstraints: BoxConstraints(minWidth: 14, minHeight: 10),
        ),
        validator: FormBuilderValidators.compose(
          [
            FormBuilderValidators.required(),
            (value) {
              if (value != controller.passwordTextEditingController.text)
                return 'password Not Match';
            }
          ],
        ),
      );
    });
  }
}
