import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/config/images_links.dart';

import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:fun_zippy/app/utilities/get_Image.dart';
import 'package:get/get.dart';

import '../../../../../theme/colors.dart';
import '../../../../../theme/text_theme.dart';
import '../../../../home/controllers/home_controller.dart';
import '../../../controllers/create_event_controller.dart';
import '../../../../../widgets/CommonDropdownWidget.dart';

class CategoryWidget extends GetView<CreateEventController> {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Category', style: boldText.copyWith(fontSize: 18)),
          20.height,
          //* Choose Category Dropdown
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Choose Category',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '*',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: redColor),
                ),
              ],
            ),
          ),
          10.height,
          CommonDropdownWidget(
            keyName: 'choose_category',
            hintText: 'Choose Category',
            itemList: listOfCategory,
            onPressed: (value) {
              controller.selectedCategory = value;
            },
          ),
          20.height,
          //* Choose Sub-Category Dropdown
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Choose Sub-Category',
                    style: normalText.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          10.height,
          CommonDropdownWidget(
            keyName: 'choose_sub_category',
            hintText: 'Choose Sub-Category',
            itemList: listOfCategory,
            onPressed: (value) {
              controller.selectedSubCategory = value;
            },
          ),
          20.height,
          //* Thumbnail Image Picker
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Thumbnail Image',
                    style: normalText.copyWith(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          20.height,
          Obx(() {
            if (controller.thumbnailImage.value.isEmpty) {
              return InkWell(
                  onTap: () async {
                    controller.thumbnailImage.value = await getImage();
                  },
                  child: SvgPicture.asset(take_event_pictureIconImage));
            } else {
              return InkWell(
                  onTap: () async {
                    controller.thumbnailImage.value = await getImage();
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.file(
                        File(controller.thumbnailImage.value),
                        height: 120,
                      )));
            }
          })
        ],
      ),
    );
  }
}
