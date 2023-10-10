import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../controllers/sign_up_controller.dart';

class NameTextfieldWidget extends StatelessWidget {
  const NameTextfieldWidget({
    super.key,
    required this.controller,
  });

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    //
    return FormBuilderTextField(
      name: 'name',
      controller: controller.nameTextEditingController,
      autofillHints: [AutofillHints.name],
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none),
        filled: true,
        hintStyle: normalText,
        hintText: "Name",
        fillColor: Colors.white,
        prefixIcon: IconButton(
          onPressed: null,
          icon: SvgPicture.asset(userIconImage),
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 14, minHeight: 10),
      ),
      validator: FormBuilderValidators.compose(
        [FormBuilderValidators.required()],
      ),
    );
  }
}
