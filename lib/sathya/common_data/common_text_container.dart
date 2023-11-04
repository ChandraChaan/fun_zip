import 'package:flutter/material.dart';
import 'package:fun_zippy/sathya/common_data/common_text.dart';

class CommonTextFieldContainer extends StatelessWidget {
  final IconData iconData;
  final String heading;

  CommonTextFieldContainer({
    required this.iconData,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return CommonWidget(
      iconData: iconData,
      heading: heading,
      child: Text10('Hello'),
    );
  }
}

class CommonWidget extends StatelessWidget {
  final IconData iconData;
  final String heading;
  final Widget child;

  CommonWidget({
    required this.iconData,
    required this.heading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        child,
        Container(
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Row(
              children: <Widget>[
                Icon(
                    iconData,
                    size: 15.0),
                SizedBox(width: 4),
                Text10(heading),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
