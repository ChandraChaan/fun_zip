import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';

import '../config/images_links.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.color, required this.title});
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 30,
      elevation: 0,
      backgroundColor: color,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(mapPinIconImage),
          5.width,
          Text(
            '$title',
            style: boldText.copyWith(fontSize: 16),
          ),
        ],
      ),
      centerTitle: true,
      leading: InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset(
            homeDrawerIconImage,
            fit: BoxFit.contain,
          ),
        ),
      ),
      actions: [
        CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          backgroundColor: Colors.transparent,
        ),
        10.width
      ],
    );
  }
}
