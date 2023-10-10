import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:fun_zippy/app/theme/colors.dart';

import '../theme/text_theme.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.name,
    required this.hintText,
    this.required = true,
    this.prefixIcon,
    this.controller,
    this.enabled,
    this.multiLine = false,
    this.digitsOnly = false,
  });
  final String name;
  final String hintText;
  final bool? required;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool? enabled;
  final bool multiLine;
  final bool digitsOnly;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      enabled: enabled ?? true,
      controller: controller,
      name: name,
      autofillHints: [AutofillHints.name],
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: multiLine ? TextInputType.multiline : TextInputType.text,
      textInputAction: TextInputAction.next,
      maxLines: multiLine ? 10 : 1,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
          filled: true,
          hintStyle: normalText,
          hintText: "$hintText",
          fillColor: Colors.white,
          prefixIcon: prefixIcon ?? null,
          prefixIconConstraints: BoxConstraints(minWidth: 14, minHeight: 10),
          errorStyle: TextStyle(color: redColor)),
      validator: FormBuilderValidators.compose(
        [if (required == true) FormBuilderValidators.required()],
      ),
      inputFormatters: [
        if (digitsOnly == true) FilteringTextInputFormatter.digitsOnly
      ],
    );
  }
}
