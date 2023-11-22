import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';

class PhoneNumber extends StatefulWidget {
  PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String defaultCountryCode = '+91';

  List<String> countryCodes = ['+91', '+92', '+93', '+94'];

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text10(
          'Phone Number',
        ),
        SizedBox(
          height: 7,
        ),
        Row(
          children: [
            Container(
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
              child: Container(
                height: 35,
                // reduce the line
                margin: const EdgeInsets.only(right: 2.0),
                decoration: BoxDecoration(
                    color: Color(0XFFF5F4F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: DropdownButton<String>(
                  value: defaultCountryCode,
                  onChanged: (newValue) {
                    setState(() {
                      defaultCountryCode = newValue!;
                    });
                  },
                  items: countryCodes.map((code) {
                    return DropdownMenuItem<String>(
                      value: code,
                      child: Text10(
                        code,
                      ),
                    );
                  }).toList(),
                  underline: Container(
                    height: 0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    color: Color(0XFFF5F4F9),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle:
                          TextStyle(fontSize: 10, color: Color(0XFF5E5A80)),
                      filled: true,
                      fillColor: Color(0XFFF5F4F9),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ))),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
