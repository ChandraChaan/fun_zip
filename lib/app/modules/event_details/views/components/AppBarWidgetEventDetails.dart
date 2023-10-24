import 'package:flutter/material.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../theme/text_theme.dart';
import 'rounded_icon_button.dart';

class AppBarWidgetEventDetails extends StatelessWidget {
  const AppBarWidgetEventDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Add AppBar here only
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        "Details",
        style: boldText.copyWith(color: Colors.white, fontSize: 20),
      ),
      centerTitle: true,
      // actions: [
      //   10.width,
      //   RoundedIconButtonWidget(
      //     icon: Icon(
      //       Icons.calendar_today,
      //       color: Colors.white,
      //     ),
      //   ),
      //   10.width,
      //   RoundedIconButtonWidget(
      //     icon: Icon(
      //       Icons.favorite,
      //       color: Colors.white,
      //     ),
      //   ),
      //   10.width,
      //   RoundedIconButtonWidget(
      //     icon: Icon(
      //       Icons.share,
      //       color: Colors.white,
      //     ),
      //   ),
      //   10.width,
      // ],
    );
  }
}
