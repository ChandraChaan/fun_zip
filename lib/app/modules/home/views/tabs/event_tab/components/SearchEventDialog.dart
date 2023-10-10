import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/modules/home/controllers/home_controller.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../../../../../config/images_links.dart';
import '../../../../../../theme/text_theme.dart';
import '../../../../../../widgets/CommonDropdownWidget.dart';
import '../../../../../../widgets/custom_buttons.dart';
import '../../../../../../widgets/CommonTextField.dart';

class SearchEventDialog extends GetView<HomeController> {
  final formKey = GlobalKey<FormBuilderState>();

  SearchEventDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        actions: [
          InkWell(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset(closeSearchPageIconImage)),
          20.width
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
          child: FormBuilder(
            key: formKey,
            child: Column(
              children: [
                CommonTextField(
                  controller: controller.searchEventTextEditingController,
                  name: 'search',
                  hintText: 'Search by name...',
                  required: false,
                  prefixIcon: IconButton(
                    onPressed: null,
                    icon: SvgPicture.asset(SearchIconTextFieldIconImage),
                  ),
                ),
                20.height,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // 20.height,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Where',
                              style: normalText.copyWith(
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: redColor),
                          ),
                        ],
                      ),
                    ),
                    10.height,
                    CommonDropdownWidget(
                      keyName: 'Location',
                      hintText: 'Location',
                      itemList: listOfCities,
                      onPressed: (value) {
                        controller.selectedCity = value;
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    20.height,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'When',
                              style: normalText.copyWith(
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: redColor),
                          ),
                        ],
                      ),
                    ),
                    10.height,
                    CommonDropdownWidget(
                      keyName: 'When',
                      hintText: 'When',
                      itemList: ['Today', 'This Week', 'This Month'],
                      onPressed: (p0) {},
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    20.height,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Category',
                              style: normalText.copyWith(
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: redColor),
                          ),
                        ],
                      ),
                    ),
                    10.height,
                    CommonDropdownWidget(
                      keyName: 'Category',
                      hintText: 'Category',
                      itemList: listOfCategory,
                      onPressed: (value) {
                        controller.selectedCategory = value;
                      },
                    ),
                  ],
                ),
                FormBuilderCheckbox(
                  name: 'online',
                  title: Text('Online'),
                  checkColor: blueColor,
                  activeColor: blueColor.withOpacity(.1),
                  onChanged: (value) {
                    controller.selectedModeOnline = value;
                  },
                  // decoration: InputDecoration(),
                  // shape: RoundedRectangleBorder(
                  //     side: BorderSide(color: blueColor, width: 1)),
                ),
                // Expanded(
                //   child: Row(
                //     children: [
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // height: 40,
        width: Get.width,
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: SmallWhiteBackgroundButton(
                    onPressed: () {
                      formKey.currentState?.reset();
                    },
                    height: 44,
                    radius: 10,
                    child: Text(
                      'Clear All',
                      style: buttonText.copyWith(color: redColor, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    borderColor: redColor)),
            5.width,
            Expanded(
              flex: 1,
              child: PrimaryButtonWidget(
                  radius: 10,
                  text: 'Search',
                  onPressed: () {
                    // if (formKey.currentState!.saveAndValidate()) {
                    //   controller.verifyPhoneOTP();
                    // }
                    Get.back();
                    controller.getAllEvents();
                    formKey.currentState!.reset();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
