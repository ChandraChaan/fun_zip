import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../theme/text_theme.dart';

class CommonDropdownWidget extends StatelessWidget {
  const CommonDropdownWidget({
    super.key,
    required this.keyName,
    required this.hintText,
    required this.itemList,
    this.required,
    required this.onPressed,
  });
  final String keyName;
  final String hintText;
  final List<String> itemList;
  final bool? required;
  final Function(String?)? onPressed;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<String>(
      name: keyName,
      onChanged: onPressed,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none),
        filled: true,
        hintStyle: normalText,
        hintText: "Choose Group",
        fillColor: Colors.white,
        // prefixIcon: IconButton(
        //   onPressed: null,
        //   icon: SvgPicture.asset(userIconImage),
        // ),
        prefixIconConstraints: BoxConstraints(minWidth: 14, minHeight: 10),
      ),
      items: List.generate(itemList.length, (index) {
        final singleItem = itemList[index];
        return DropdownMenuItem(
          alignment: AlignmentDirectional.center,
          value: singleItem,
          child: Text('$singleItem'),
        );
      }),
      validator: FormBuilderValidators.compose(
        [if (required == true) FormBuilderValidators.required()],
      ),
    );
  }
}
