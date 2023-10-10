import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../controllers/forgot_password_controller.dart';

class EmailTextfieldWidget extends StatelessWidget {
  const EmailTextfieldWidget({
    super.key,
    required this.controller,
  });

  final ForgotPasswordController controller;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: 'email',
      controller: controller.emailTextEditingController,
      focusNode: controller.emailFocus,
      // autovalidateMode: AutovalidateMode.
      autofillHints: [AutofillHints.email],
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.go,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none),
        filled: true,
        hintStyle: normalText,
        hintText: "email",
        fillColor: Colors.white,
        prefixIcon: IconButton(
          onPressed: null,
          icon: SvgPicture.asset(emailIconImage),
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 14, minHeight: 10),
      ),
      validator: FormBuilderValidators.compose(
        [FormBuilderValidators.required(), FormBuilderValidators.email()],
      ),
    );
  }
}
