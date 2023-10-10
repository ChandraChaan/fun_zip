import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:fun_zippy/app/config/images_links.dart';

import '../../../../theme/text_theme.dart';
import '../../controllers/sign_in_controller.dart';

class EmailTextfieldWIdget extends StatelessWidget {
  const EmailTextfieldWIdget({
    super.key,
    required this.controller,
  });

  final SignInController controller;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: 'email',
      controller: controller.emailTextEditingController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.emailAddress,
      autofillHints: [AutofillHints.name],
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none),
        filled: true,
        hintStyle: normalText,
        hintText: "Email",
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
