import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:fun_zippy/app/widgets/progress.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../sathya/common_logo_widget.dart';
import '../../../config/images_links.dart';
import '../../../theme/colors.dart';
import '../../../theme/text_theme.dart';
import '../../../widgets/custom_buttons.dart';
import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  OtpVerificationView({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetX<OtpVerificationController>(
          init: OtpVerificationController(),
          // initState: (state) {
          //   controller.getOtp();
          // },
          builder: (_) {
            if (controller.loading.value == true) {
              return LadingWidget();
            } else {
              return FormBuilder(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SvgPicture.asset(otpLockIconImage),
                      ),
                      20.height,
                      Center(
                        child: Column(
                          children: [
                            Text(
                              'OTP Verification',
                              style: boldText.copyWith(fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                            20.height,
                            Text(
                              '4 Digit Otp has been send to your mobile number',
                              style: normalText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      20.height,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: PinCodeTextField(
                          controller: controller.otpTextEditingController,
                          autoDisposeControllers: false,
                          appContext: context,
                          pastedTextStyle: TextStyle(
                            color: Colors.green.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                          length: 4,
                          blinkWhenObscuring: true,
                          animationType: AnimationType.fade,
                          validator: FormBuilderValidators.compose(
                            [
                              FormBuilderValidators.required(),
                              FormBuilderValidators.minLength(4),
                              FormBuilderValidators.maxLength(4),
                            ],
                          ),
                          pinTheme: PinTheme(
                              inactiveFillColor: Colors.white,
                              activeColor: Colors.white,
                              selectedColor: Colors.white,
                              selectedFillColor: Colors.white,
                              shape: PinCodeFieldShape.circle,
                              fieldHeight: 50,
                              fieldWidth: 50,
                              activeFillColor: Colors.white,
                              fieldOuterPadding: EdgeInsets.all(0)),
                          cursorColor: Colors.black,
                          animationDuration: const Duration(milliseconds: 300),
                          enableActiveFill: true,
                          keyboardType: TextInputType.number,
                          // errorAnimationController: errorController,
                          // controller: textEditingController,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          boxShadows: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.black12,
                              blurRadius: 10,
                            )
                          ],
                        ),
                      ),
                      (Get.height * .05).height,
                      InkWell(
                        onTap: () {
                          controller.getOtp();
                        },
                        child: Center(
                          child: Text(
                            'Resend ',
                            style: normalText,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          }),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: PrimaryButtonWidget(
            text: 'Verify',
            onPressed: () {
              if (formKey.currentState!.saveAndValidate()) {
                controller.verifyPhoneOTP();
              }
            }),
      ),
    );
  }
}
