import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';
import '../../../../sathya/common_logo_widget.dart';
import '../../../config/images_links.dart';
import '../../../routes/app_pages.dart';
import '../../../theme/text_theme.dart';
import '../../../utilities/get_Image.dart';
import '../../../widgets/custom_buttons.dart';
import '../controllers/sign_up_controller.dart';
import '../../../theme/colors.dart';
import 'components/ConfirmPasswordWidget.dart';
import 'components/EmailTextfieldWidget.dart';
import 'components/NameTextfieldWidget.dart';
import 'components/PasswordTextfieldWidget.dart';
import 'components/PhoneTextfieldWidget.dart';

class SignUpView extends GetView<SignUpController> {
  SignUpView({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back),
            ),
            FormBuilder(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Text(
                              'Create an Account',
                              style: boldText.copyWith(fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                            20.height,
                            Text(
                              'Create a great platform for managing your Events',
                              style: normalText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      20.height,
                      InkWell(
                        onTap: () {
                          getImage();
                        },
                        child: Center(
                          child: SvgPicture.asset(takePhotoIconImage),
                        ),
                      ),
                      20.height,
                      NameTextfieldWidget(controller: controller),
                      20.height,
                      EmailTextfieldWidget(controller: controller),
                      20.height,
                      PhoneTextfieldWidget(controller: controller),
                      20.height,
                      PasswordTextfieldWidget(controller: controller),
                      20.height,
                      ConfirmPasswordWidget(controller: controller),
                      20.height,
                      PrimaryButtonWidget(
                          text: 'Sign Up',
                          onPressed: () {
                            if (formKey.currentState!.saveAndValidate()) {
                              controller.signUp();
                            }
                          }),
                      20.height,
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have An Account? ',
                              style: normalText,
                              textAlign: TextAlign.center,
                            ),
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.SIGN_IN);
                              },
                              child: Text(
                                'Sign In',
                                style: boldText.copyWith(
                                    color: blueColor, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
