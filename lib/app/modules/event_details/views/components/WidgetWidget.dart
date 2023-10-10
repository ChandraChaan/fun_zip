import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../../../widgets/rounded_border.dart';

class WidgetWidget extends StatelessWidget {
  const WidgetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Widget', style: titleBoldText),
          ),
          10.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset(uberIconImage),
                      5.height,
                      Text('Uber', style: boldText.copyWith(fontSize: 10)),
                    ],
                  )),
              10.width,
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset(liftIconImage),
                      5.height,
                      Text('lift', style: boldText.copyWith(fontSize: 10)),
                    ],
                  )),
              10.width,
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      SvgPicture.asset(airlineIconImage),
                      5.height,
                      Text('Airlines', style: boldText.copyWith(fontSize: 10)),
                    ],
                  )),
            ],
          ),
          10.height,
        ],
      ),
    );
  }
}
