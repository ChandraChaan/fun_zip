import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/config/images_links.dart';

import 'package:fun_zippy/app/theme/text_theme.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../widgets/rounded_border.dart';

class ShareWidget extends StatelessWidget {
  const ShareWidget({
    super.key,
  });
  Future<void> _launchUrl(String _url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw Exception('Could not launch $_url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text('Share', style: normalText),
            10.width,
            InkWell(onTap:(){_launchUrl('https://www.facebook.com/');},child: SvgPicture.asset(facebook_roundedIconImage)),
            10.width,
            SvgPicture.asset(instagram_roundedIconImage),
            10.width,
            SvgPicture.asset(twitter_roundedIconImage),
            10.width,
            SvgPicture.asset(pinterest_roundedIconImage),
            10.width,
            SvgPicture.asset(linkedin_roundedIconImage),
            10.width,
            SvgPicture.asset(whatsapp_roundedIconImage),
          ],
        ),
      ),
    );
  }
}
