import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:fun_zippy/app/config/images_links.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import '../../../routes/app_pages.dart';
import '../../../theme/colors.dart';
import '../../../widgets/custom_buttons.dart';
import '../controllers/sign_in_controller.dart';
import 'components/EmailTextfieldWIdget.dart';
import 'components/LoginCommonButtonWidget.dart';
import 'components/PasswordTextfieldWidget.dart';
import '../../../widgets/PhoneTextfieldWidget.dart';

class SignInView extends GetView<SignInController> {
  SignInView({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: GetX<SignInController>(
            init: SignInController(),
            builder: (_) {
              return FormBuilder(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        (Get.height * .1).height,
                        Center(
                          child: Text(
                            'Hello! Sign In',
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Poppins',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        20.height,

                        //
                        if (controller.phoneTextfieldActive.value == true)
                          PhoneTextfieldWidget(
                            onChanged: (PhoneNumber phone) {
                              print(phone);
                              controller.completePhoneNumber =
                                  '${phone.countryCode.replaceAll('+', '')}-${phone.number}';
                              print(controller.completePhoneNumber);
                            },
                          )
                        else
                          EmailTextfieldWIdget(controller: controller),
                        20.height,

                        //* username textfield

                        20.height,
                        //* password textfield
                        PasswordTextfieldWidget(
                          controller: controller,
                        ),
                        10.height,
                        //* forget password button
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.FORGOT_PASSWORD);
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFF5E5A80)),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        20.height,
                        //* Log In button
                        PrimaryButtonWidget(
                            text: 'Log In',
                            onPressed: () {
                              if (formKey.currentState!.saveAndValidate()) {
                                controller.signIn();
                              }
                            }),
                        20.height,
                        Center(
                          child: Text(
                            'Or Connect With',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: textColor),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        20.height,
                        //*  Login with Phone Number
                        if (controller.phoneTextfieldActive.value == false)
                          LoginCommonButtonWidget(
                              icon: SvgPicture.asset(phoneIconImage,
                                  color: redColor),
                              title: 'Log In With Phone Number',
                              onPressed: () {
                                controller.phoneTextfieldActive.value = true;
                              })
                        //*  Login with Email
                        else
                          LoginCommonButtonWidget(
                              icon: SvgPicture.asset(emailIconImage,
                                  color: redColor),
                              title: 'Log In With Email',
                              onPressed: () {
                                controller.phoneTextfieldActive.value = false;
                              }),

                        20.height,
                        //*  Login with Google
                        LoginCommonButtonWidget(
                            icon: SvgPicture.asset(googleImage),
                            title: 'Login with Google',
                            onPressed: () {}),
                        20.height,
                        //*  Login with facebook
                        LoginCommonButtonWidget(
                            icon: SvgPicture.asset(facebookImage),
                            title: 'Login with facebook',
                            onPressed: () {}),
                        20.height,
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Not a member? ',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    color: Color(0xFF5E5A80)),
                                textAlign: TextAlign.center,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.SIGN_UP);
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: Color(0xFF5B46F4)),
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
              );
            }));
  }
}
