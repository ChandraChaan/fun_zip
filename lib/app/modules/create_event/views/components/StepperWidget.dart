import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../controllers/create_event_controller.dart';

List<String> stepNamesList = [
  'Basic Detail',
  'Type of Event',
  'Date & time',
  'Category',
];

class StepperWidget extends GetView<CreateEventController> {
  const StepperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Material(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 0),
          height: 15.percentHeight,
          width: 100.percentWidth,
          decoration: BoxDecoration(
              // color: widget.backgroundColor,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: <Color>[
                    Color(0xFFDC143C),
                    Color(0xFFFFCD49),
                  ],
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: List.generate(stepNamesList.length, (index) {
                String singleItem = stepNamesList[index];
                bool checkSelected = false;
                if (controller.currentPage.value == index) {
                  checkSelected = true;
                } else {
                  checkSelected = false;
                }

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: node.completed
                        //     ? widget.activeNodeColor
                        //     : widget.inActiveNodeColor,
                        color: checkSelected == true
                            ? blueColor
                            : Colors.white.withOpacity(.2),
                        border: Border.all(
                          width: 1,
                          color: whiteColor,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Text(
                        "${index + 1}",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Color(0xFFC9C6E1),
                      thickness: 5,
                    ),
                    10.height,
                    Text(
                      '$singleItem',
                      style: normalText.copyWith(
                          fontSize: 10,
                          color: checkSelected == true
                              ? whiteColor
                              : whiteColor.withOpacity(.5)),
                    ),
                  ],
                );
              })),
        ),
      );
    });
  }
}
