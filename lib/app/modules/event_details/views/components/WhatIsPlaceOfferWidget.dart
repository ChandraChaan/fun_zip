// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fun_zippy/app/utilities/extention.dart';

import '../../../../config/images_links.dart';
import '../../../../theme/text_theme.dart';
import '../../../../widgets/rounded_border.dart';
import '../../controllers/event_details_controller.dart';

class WhatIsPlaceOfferWidget extends StatelessWidget {
  const WhatIsPlaceOfferWidget({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

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
            child: Text('What This Place Offers', style: titleBoldText),
          ),
          10.height,
          ListTileWidget(
              Icon: SvgPicture.asset(map_2IconImage),
              title: 'Directions',
              subtitle: ' '),
          ListTileWidget(
              Icon: SvgPicture.asset(parkingIconImage),
              title: 'Parking',
              subtitle: ' '),
          ListTileWidget(
              Icon: SvgPicture.asset(home_2IconImage),
              title: 'Places to stay',
              subtitle: controller.eventDetailsModel.placesToStay.toString()),
        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.Icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final Widget Icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon,
      title: Text(
        '$title',
        style: boldText.copyWith(fontSize: 14),
      ),
      subtitle: Text('$subtitle', style: normalText.copyWith(fontSize: 10)),
    );
  }
}
