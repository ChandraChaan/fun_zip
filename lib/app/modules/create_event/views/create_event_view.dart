import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fun_zippy/app/modules/create_event/views/tabs/TypeOfEventWidget/TypeOfEventWidget.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:fun_zippy/sathya/my_events_screen/my_events.dart';
import 'package:get/get.dart';
import '../../../../sathya/common_logo_widget.dart';
import '../../../widgets/AppBarWidget.dart';
import '../controllers/create_event_controller.dart';
import 'tabs/BasicDetailsStepWidget/BasicDetailsStepWidget.dart';
import 'components/ButtonNavigationEventWidget.dart';
import 'tabs/CategoryWidget/CategoryWidget.dart';
import 'tabs/DateAndTimeStepWidget/DateAndTimeStepWidget.dart';
import 'components/StepperWidget.dart';

class CreateEventView extends GetView<CreateEventController> {
  const CreateEventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      title: 'Create an Event',
      child: GetX<CreateEventController>(
        init: CreateEventController(),
        initState: (state) {
          // controller.getCategories();
        },
        builder: (_) {
          if (controller.loading.value == true) {
            return Text('loading');
          } else {
            return FormBuilder(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 0, right: 20, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    StepperWidget(),
                    20.height,
                    Expanded(
                      child: PageView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: controller.pageController,
                        children: [
                          BasicDetailsStepWidget(),
                          TypeOfEventWidget(),
                          DateAndTimeStepWidget(),
                          CategoryWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
      // bottomNavigationBar: ButtonNavigationEventWidget(
      //   controller: controller,
      //   onGenerateDescriptionPressed: () {
      //     FocusScope.of(context).unfocus();
      //     controller.generateDescription();
      //   },
      //   onNextPressed: () async {
      //     if (controller.formKey.currentState!.saveAndValidate()) {
      //       FocusScope.of(context).unfocus();
      //
      //       await controller.pageController.nextPage(
      //           duration: const Duration(milliseconds: 200),
      //           curve: Curves.linear);
      //
      //       controller.currentPage.value =
      //           controller.pageController.page!.toInt();
      //     }
      //   },
      //   onBackPressed: () async {
      //     FocusScope.of(context).unfocus();
      //
      //     await controller.pageController.previousPage(
      //         duration: const Duration(milliseconds: 200),
      //         curve: Curves.linear);
      //
      //     controller.currentPage.value =
      //         controller.pageController.page!.toInt();
      //   },
      //   onCreateAnEventPressed: () {
      //     // Get.to(SuccessfulEventPage());
      //     controller.createAnEvent();
      //   },
      // ),
    );
  }
}
