import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';

import 'package:get/get.dart';

import '../../../../../config/images_links.dart';
import '../../../../../data/model/HomeApiResponseModel.dart';
import '../../../../../theme/colors.dart';
import '../../../../../widgets/AppBarWidget.dart';
import '../../../controllers/home_controller.dart';
import '../../components/PersistentHeader.dart';
import '../../../../../widgets/SingleEventItemWidget.dart';
import 'components/SearchEventDialog.dart';

class EventTab extends GetView<HomeController> {
  const EventTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistentHeader(
              widget: Column(
                // Format this to meet your need
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Obx(() {
                    return AppBarWidget(
                        color: backgroundColor,
                        title:
                            '${controller.userAddress.value.locality ?? ''}');
                  }),
                  // SearchEventDialog(),
                  InkWell(
                    onTap: () {
                      Get.dialog(SearchEventDialog());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FormBuilderTextField(
                        enabled: false,
                        name: 'search',
                        // controller: controller.emailTextEditingController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: [AutofillHints.name],
                        decoration: InputDecoration(
                          hintMaxLines: 2,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          filled: true,
                          hintStyle: normalText.copyWith(height: 1.2
                              //You can set your custom height here

                              ),
                          hintText:
                              "Search All events...\nWhere | When | Category",
                          fillColor: Colors.white,
                          prefixIcon: IconButton(
                              onPressed: null,
                              icon: SvgPicture.asset(
                                  SearchIconTextFieldIconImage)),
                          suffixIcon: IconButton(
                              onPressed: null,
                              icon: SvgPicture.asset(filterTextFieldIconImage)),
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 14, minHeight: 10),
                        ),
                        validator: FormBuilderValidators.compose(
                          [
                            FormBuilderValidators.required(),
                            FormBuilderValidators.email()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Chip(
                            avatar: Icon(Icons.star, color: textColor),
                            label: Text(
                              'Party',
                              style: normalText,
                            ),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: Colors.black, width: .2),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ];
      },
      body: Builder(
        builder: (context) {
          // final innerScrollController = PrimaryScrollController.of(context);

          return GetX(
            init: HomeController(),
            builder: (controller) {
              if (controller.loading.value == true) {
                return Center(child: Text('Loading ...'));
              } else {
                if (controller.apiResponseModel.value.results == null) {
                  return Center(child: Text('Loading ...'));
                } else {
                  return ListView.builder(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    itemCount:
                        controller.apiResponseModel.value.results!.length,
                    itemBuilder: (context, index) {
                      Results result =
                          controller.apiResponseModel.value.results![index];
                      return SingleEventItemWidget(
                        result: result,
                        onPressed: () {
                          HomeController.to
                              .goToEventDetailsPage(uid: result.uid);
                        },
                      );
                    },
                  );
                }
              }
            },
          );
        },
      ),
    );
  }
}
