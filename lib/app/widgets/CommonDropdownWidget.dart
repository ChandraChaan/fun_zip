import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart'; // Import the package
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
  final Function(String?) onPressed;

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<String>(
      textFieldConfiguration: TextFieldConfiguration(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintStyle: normalText,
          hintText: hintText,
          fillColor: Colors.white,
        ),
        // Other text field properties can be configured here.
      ),
      suggestionsCallback: (pattern) {
        // Implement a filtering logic for your items based on the search pattern.
        return itemList.where(
            (item) => item.toLowerCase().contains(pattern.toLowerCase()));
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(suggestion),
        );
      },
      onSuggestionSelected: (String? suggestion) {
        onPressed(suggestion);
      },
    );
  }
}
