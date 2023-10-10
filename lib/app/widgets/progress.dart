import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressBar {
  static start() {
    Get.dialog(
      LadingWidget(),
      barrierDismissible: false,
    );
  }

  static void stop() {
    if (Get.isDialogOpen == true) {
      Get.back();
    }
  }
}

class LadingWidget extends StatelessWidget {
  const LadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      /* child: CircularProgressIndicator(
        strokeWidth: 5.0,
        backgroundColor: Colors.amber,
      ), */
      child: Wrap(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(50),
                  // ),
                ),
                // child: LoadingAnimationCart(),
                child: CircularProgressIndicator(
                    //strokeWidth: 5.0,
                    //backgroundColor: Colors.amber,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
