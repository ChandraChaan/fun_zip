import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../controllers/sign_up_controller.dart';

class PhoneTextfieldWidget extends GetView<SignUpController> {
  const PhoneTextfieldWidget({
    super.key,
    required this.controller,
  });

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller.phoneTextEditingController,
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.go,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none),
        filled: true,
        hintStyle: normalText,
        hintText: "Phone Number",
        fillColor: Colors.white,
        counterText: '',
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              padding: EdgeInsets.only(bottom: 0, left: 0, top: 0, right: 0),
              onPressed: null,
              icon: SvgPicture.asset(phoneIconImage),
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: CountryCodePicker(
                onChanged: (v) {},
                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                initialSelection: 'IN',
                // optional. Shows only country name and flag
                // showCountryOnly: true,
                // optional. Shows only country name and flag when popup is closed.
                // showOnlyCountryWhenClosed: false,
                // optional. aligns the flag and the Text left
                alignLeft: false,
                showFlag: true,
                textStyle: boldText,
                padding: EdgeInsets.only(bottom: 0, left: 0, top: 0, right: 0),
              ),
            ),
          ],
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 14, minHeight: 10),
      ),
      initialCountryCode: 'IN',
      validator: FormBuilderValidators.compose(
        [FormBuilderValidators.required()],
      ),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      onChanged: (phone) {
        controller.completePhoneNumber =
            '${phone.countryCode.replaceAll('+', '')}-${phone.number}';
      },
    );
  }
}
