import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../config/images_links.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Center(child: SvgPicture.asset(assetSplash)),
      body: Center(child: Image.asset(assetSplash)),
    );
  }
}
