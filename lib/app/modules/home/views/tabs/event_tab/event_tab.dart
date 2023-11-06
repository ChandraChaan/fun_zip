import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:fun_zippy/sathya/my_events_screen/my_events.dart';

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
    return GetX(
      init: HomeController(),
      builder: (controller) {
        if (controller.loading.value == true) {
          return responsiveWidget(
            isScroll: false,
            child: bodyWidget(),
          );
          ;
        } else {
          if (controller.apiResponseModel.value.results == null) {
            return responsiveWidget(
              isScroll: false,
              child: bodyWidget(),
            );
            ;
          } else {
            return responsiveWidget(
              isScroll: true,
              child: bodyWidget(),
            );
          }
        }
      },
    );
  }

  Widget bodyWidget() {
    return /*CommonScafold(
      titleChild: Obx(() {
        return Text('${controller.userAddress.value.locality ?? 'EMPTY'}');
      }),
      child:*/ Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Obx(() {
          //   return AppBarWidget(
          //       color: backgroundColor,
          //       title: '${controller.userAddress.value.locality ?? ''}');
          // }),
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
                  hintText: "Search All events...\nWhere | When | Category",
                  fillColor: Colors.white,
                  prefixIcon: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(SearchIconTextFieldIconImage)),
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
          CarouselSlider(
            items: [
              Image.asset('assets/svg/Rectangle_33.png', fit: BoxFit.fill),
              Image.asset('assets/svg/Rectangle_33.png', fit: BoxFit.fill),
              Image.asset('assets/svg/Rectangle_33.png', fit: BoxFit.fill),
            ],
            options: CarouselOptions(
              height: 150,
              viewportFraction: 0.95,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              enlargeFactor: 0.8,
              onPageChanged: (num, str) {
                controller.currentSlide = num;
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          _buildDotsIndicator(controller.currentSlide, 3),
          SizedBox(
            height: 100,
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Chip(
                    avatar:
                        Icon(controller.items[index]["icon"], color: textColor),
                    label: Text(
                      '${controller.items[index]["name"]}',
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
          ),
          GetX(
            init: HomeController(),
            builder: (controller) {
              if (controller.loading.value == true) {
                return Center(child: Text('Loading ...'));
              } else {
                if (controller.apiResponseModel.value.results == null) {
                  return Center(child: Text('No Data'));
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
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
          ),
        ],
      );
  }

// Create a function to build the dots indicator
  Widget _buildDotsIndicator(int activeIndex, int itemCount) {
    return Column(
      children: [
        Container(
          height: 10,
          width: 50,
          decoration: BoxDecoration(
              color: Color(0XFFE2DEFF),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              itemCount,
              (index) {
                return Container(
                  width: 6,
                  // Adjust the width of the dots as needed
                  height: 6,
                  // Adjust the height of the dots as needed
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  // Adjust the spacing between the dots as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == activeIndex.bitLength
                        ? Color(0XFF5B46F4)
                        : Color(
                            0XFF85829B), // Adjust the active and inactive dot colors
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  //responsive widget will do separate the UI based the api response
  Widget responsiveWidget({required bool isScroll, required Widget child}) {
    return isScroll
        ? SingleChildScrollView(
            child: child,
          )
        : child;
  }
}
