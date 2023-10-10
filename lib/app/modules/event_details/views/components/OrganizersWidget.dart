import 'package:flutter/material.dart';

import 'package:fun_zippy/app/theme/text_theme.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../widgets/rounded_border.dart';

class OrganizersWidget extends StatelessWidget {
  const OrganizersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Organizers',
              style: titleBoldText,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(flex: 3, child: Image.asset(assetSplash)),
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Name      :  ', style: normalText),
                        Text('Fun zippy', style: normalText),
                      ],
                    ),
                    5.height,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Email       :  ', style: normalText),
                        Text('Fun zippy@gmail.com', style: normalText),
                      ],
                    ),
                    5.height,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Phone      :  ', style: normalText),
                        Text('94646461616', style: normalText),
                      ],
                    ),
                    5.height,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Website   :  ', style: normalText),
                        Text('ww.niuhsfdishn.com', style: normalText),
                      ],
                    ),
                    5.height,
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
