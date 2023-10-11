import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../theme/text_theme.dart';

class CommonDropdownWidget extends StatefulWidget {
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
  _CommonDropdownWidgetState createState() => _CommonDropdownWidgetState();
}

class _CommonDropdownWidgetState extends State<CommonDropdownWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = ''; // Initialize with an empty string
  }

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<String>(
      textFieldConfiguration: TextFieldConfiguration(
        controller: _controller, // Set the controller
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintStyle: normalText,
          hintText: widget.hintText,
          fillColor: Colors.white,
        ),
      ),
      suggestionsCallback: (pattern) {
        return widget.itemList.where(
                (item) => item.toLowerCase().contains(pattern.toLowerCase()));
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(suggestion),
        );
      },
      onSuggestionSelected: (String? suggestion) {
        setState(() {
          _controller.text = suggestion ?? ''; // Update the text field
        });
        widget.onPressed(suggestion);
      },
    );
  }
}
