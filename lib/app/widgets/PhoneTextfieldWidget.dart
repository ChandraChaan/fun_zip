import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'dart:async';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:intl_phone_field/countries.dart';

import '../theme/text_theme.dart';

class PhoneTextfieldWidget extends StatefulWidget {
  final bool obscureText;

  final TextAlign textAlign;

  final TextAlignVertical? textAlignVertical;
  final VoidCallback? onTap;

  final bool readOnly;
  final FormFieldSetter<PhoneNumber>? onSaved;

  final ValueChanged<PhoneNumber>? onChanged;

  final ValueChanged<Country>? onCountryChanged;

  final FutureOr<String?> Function(PhoneNumber?)? validator;

  /// {@macro flutter.widgets.editableText.keyboardType}
  final TextInputType keyboardType;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final void Function(String)? onSubmitted;

  final bool enabled;

  final Brightness? keyboardAppearance;

  final String? initialValue;

  final String languageCode;

  final String? initialCountryCode;

  final List<Country>? countries;

  final TextStyle? style;

  final bool disableLengthCheck;

  final bool showDropdownIcon;

  final BoxDecoration dropdownDecoration;

  final TextStyle? dropdownTextStyle;

  final List<TextInputFormatter>? inputFormatters;

  final String searchText;

  final IconPosition dropdownIconPosition;

  final Icon dropdownIcon;

  final bool autofocus;

  final AutovalidateMode? autovalidateMode;

  final bool showCountryFlag;

  final String? invalidNumberMessage;

  final Color? cursorColor;

  final double? cursorHeight;

  final Radius? cursorRadius;

  final double cursorWidth;

  final bool? showCursor;

  final EdgeInsetsGeometry flagsButtonPadding;

  final TextInputAction? textInputAction;

  final PickerDialogStyle? pickerDialogStyle;

  final EdgeInsets flagsButtonMargin;

  final bool disableAutoFillHints;

  const PhoneTextfieldWidget({
    Key? key,
    this.initialCountryCode,
    this.languageCode = 'en',
    this.disableAutoFillHints = false,
    this.obscureText = false,
    this.textAlign = TextAlign.left,
    this.textAlignVertical,
    this.onTap,
    this.readOnly = false,
    this.initialValue,
    this.keyboardType = TextInputType.phone,
    this.controller,
    this.focusNode,
    // this.decoration = const InputDecoration(),
    this.style,
    this.dropdownTextStyle = const TextStyle(
      // fontSize: getScreenWidth(14),
      fontFamily: 'Poppins',
      fontSize: 12,
      fontWeight: FontWeight.normal,
      height: 1.0,
      color: blueColor,
    ),
    this.onSubmitted,
    this.validator,
    this.onChanged,
    this.countries,
    this.onCountryChanged,
    this.onSaved,
    this.showDropdownIcon = true,
    this.dropdownDecoration = const BoxDecoration(),
    this.inputFormatters,
    this.enabled = true,
    this.keyboardAppearance,
    @Deprecated('Use searchFieldInputDecoration of PickerDialogStyle instead')
    this.searchText = 'Search country',
    this.dropdownIconPosition = IconPosition.leading,
    this.dropdownIcon = const Icon(Icons.arrow_drop_down),
    this.autofocus = false,
    this.textInputAction,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.showCountryFlag = false,
    this.cursorColor,
    this.disableLengthCheck = false,
    this.flagsButtonPadding = EdgeInsets.zero,
    this.invalidNumberMessage = 'Invalid Mobile Number',
    this.cursorHeight,
    this.cursorRadius = Radius.zero,
    this.cursorWidth = 2.0,
    this.showCursor = true,
    this.pickerDialogStyle,
    this.flagsButtonMargin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  _IntlPhoneFieldState createState() => _IntlPhoneFieldState();
}

class _IntlPhoneFieldState extends State<PhoneTextfieldWidget> {
  late List<Country> _countryList;
  late Country _selectedCountry;
  late List<Country> filteredCountries;
  late String number;
  String latestNumber = '';
  String? validatorMessage;

  @override
  void initState() {
    super.initState();
    _countryList = widget.countries ?? countries;
    filteredCountries = _countryList;
    number = widget.initialValue ?? '';
    if (widget.initialCountryCode == null && number.startsWith('+')) {
      number = number.substring(1);
      // parse initial value
      _selectedCountry = countries.firstWhere(
          (country) => number.startsWith(country.fullCountryCode),
          orElse: () => _countryList.first);

      // remove country code from the initial number value
      number = number.replaceFirst(
          RegExp("^${_selectedCountry.fullCountryCode}"), "");
    } else {
      _selectedCountry = _countryList.firstWhere(
          (item) => item.code == (widget.initialCountryCode ?? 'US'),
          orElse: () => _countryList.first);

      // remove country code from the initial number value
      if (number.startsWith('+')) {
        number = number.replaceFirst(
            RegExp("^\\+${_selectedCountry.fullCountryCode}"), "");
      } else {
        number = number.replaceFirst(
            RegExp("^${_selectedCountry.fullCountryCode}"), "");
      }
    }

    if (widget.autovalidateMode == AutovalidateMode.always) {
      final initialPhoneNumber = PhoneNumber(
        countryISOCode: _selectedCountry.code,
        countryCode: '+${_selectedCountry.dialCode}',
        number: widget.initialValue ?? '',
      );

      final value = widget.validator?.call(initialPhoneNumber);

      if (value is String) {
        validatorMessage = value;
      } else {
        (value as Future).then((msg) {
          validatorMessage = msg;
        });
      }
    }
  }

  Future<void> _changeCountry() async {
    filteredCountries = _countryList;
    await showDialog(
      context: context,
      useRootNavigator: false,
      builder: (context) => StatefulBuilder(
        builder: (ctx, setState) => CountryPickerDialog(
          languageCode: widget.languageCode.toLowerCase(),
          style: widget.pickerDialogStyle,
          filteredCountries: filteredCountries,
          searchText: widget.searchText,
          countryList: _countryList,
          selectedCountry: _selectedCountry,
          onCountryChanged: (Country country) {
            _selectedCountry = country;

            final phoneNumber = PhoneNumber(
              countryISOCode: _selectedCountry.code,
              countryCode: '+${_selectedCountry.fullCountryCode}',
              number: latestNumber,
            );
            widget.onChanged!.call(phoneNumber);
            widget.onCountryChanged?.call(country);
            setState(() {});
          },
        ),
      ),
    );
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: 'phone',
      initialValue: (widget.controller == null) ? number : null,
      autofillHints: widget.disableAutoFillHints
          ? null
          : [AutofillHints.telephoneNumberNational],
      readOnly: widget.readOnly,
      obscureText: widget.obscureText,
      textAlign: widget.textAlign,
      textAlignVertical: widget.textAlignVertical,
      cursorColor: widget.cursorColor,
      onTap: widget.onTap,
      controller: widget.controller,
      focusNode: widget.focusNode,
      cursorHeight: widget.cursorHeight,
      cursorRadius: widget.cursorRadius,
      cursorWidth: widget.cursorWidth,
      showCursor: widget.showCursor,
      // onFieldSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none),
        filled: true,
        hintStyle: normalText,
        hintText: "Phone Number",
        fillColor: Colors.white,
        counterText: '',
        prefixIconConstraints: BoxConstraints(minWidth: 14, minHeight: 10),
        prefixIcon: _buildFlagsButton(),
      ),
      // widget.decoration.copyWith(
      //   prefixIcon: _buildFlagsButton(),
      //   counterText: !widget.enabled ? '' : null,
      // ),
      style: widget.style,
      onSaved: (value) {
        widget.onSaved?.call(
          PhoneNumber(
            countryISOCode: _selectedCountry.code,
            countryCode:
                '+${_selectedCountry.dialCode}${_selectedCountry.regionCode}',
            number: value!,
          ),
        );
      },
      onChanged: (value) async {
        latestNumber = value!;
        final phoneNumber = PhoneNumber(
          countryISOCode: _selectedCountry.code,
          countryCode: '+${_selectedCountry.fullCountryCode}',
          number: latestNumber,
        );

        if (widget.autovalidateMode != AutovalidateMode.disabled) {
          validatorMessage = await widget.validator?.call(phoneNumber);
        }

        widget.onChanged?.call(phoneNumber);
      },
      // validator: (value) {
      //   if (value == null || !isNumeric(value)) return validatorMessage;
      //   if (!widget.disableLengthCheck) {
      //     return value.length >= _selectedCountry.minLength &&
      //             value.length <= _selectedCountry.maxLength
      //         ? null
      //         : widget.invalidNumberMessage;
      //   }

      //   return validatorMessage;
      // },
      validator: FormBuilderValidators.compose(
        [
          FormBuilderValidators.required(),
        ],
      ),
      maxLength: widget.disableLengthCheck ? null : _selectedCountry.maxLength,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      enabled: widget.enabled,
      keyboardAppearance: widget.keyboardAppearance,
      autofocus: widget.autofocus,
      textInputAction: widget.textInputAction,
      autovalidateMode: widget.autovalidateMode,
    );
  }

  Container _buildFlagsButton() {
    return Container(
      margin: widget.flagsButtonMargin,
      child: DecoratedBox(
        decoration: widget.dropdownDecoration,
        child: InkWell(
          borderRadius: widget.dropdownDecoration.borderRadius as BorderRadius?,
          onTap: widget.enabled ? _changeCountry : null,
          child: Padding(
            padding: widget.flagsButtonPadding,
            child: IntrinsicHeight(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  8.width,
                  FittedBox(
                    child: Text(
                      '+${_selectedCountry.dialCode}',
                      style:
                          widget.dropdownTextStyle!.copyWith(color: blueColor),
                    ),
                  ),
                  widget.dropdownIcon,
                  VerticalDivider(color: Color(0xFFEDEBFB), thickness: 2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum IconPosition {
  leading,
  trailing,
}

mixin ToAlias {}

/// Country element. This is the element that contains all the information
class CountryCode {
  /// the name of the country
  String? name;

  /// the flag of the country
  final String? flagUri;

  /// the country code (IT,AF..)
  final String? code;

  /// the dial code (+39,+93..)
  final String? dialCode;

  CountryCode({
    this.name,
    this.flagUri,
    this.code,
    this.dialCode,
  });

  @Deprecated('Use `fromCountryCode` instead.')
  factory CountryCode.fromCode(String isoCode) {
    return CountryCode.fromCountryCode(isoCode);
  }

  factory CountryCode.fromCountryCode(String countryCode) {
    final Map<String, String>? jsonCode = codes.firstWhereOrNull(
      (code) => code['code'] == countryCode,
    );
    return CountryCode.fromJson(jsonCode!);
  }

  factory CountryCode.fromDialCode(String dialCode) {
    final Map<String, String>? jsonCode = codes.firstWhereOrNull(
      (code) => code['dial_code'] == dialCode,
    );
    return CountryCode.fromJson(jsonCode!);
  }

  CountryCode localize(BuildContext context) {
    return this
      ..name = CountryLocalizations.of(context)?.translate(code) ?? name;
  }

  factory CountryCode.fromJson(Map<String, dynamic> json) {
    return CountryCode(
      name: json['name'],
      code: json['code'],
      dialCode: json['dial_code'],
      flagUri: 'flags/${json['code'].toLowerCase()}.png',
    );
  }

  @override
  String toString() => "$dialCode";

  String toLongString() => "$dialCode ${toCountryStringOnly()}";

  String toCountryStringOnly() {
    return '$_cleanName';
  }

  String? get _cleanName {
    return name?.replaceAll(RegExp(r'[[\]]'), '').split(',').first;
  }
}
