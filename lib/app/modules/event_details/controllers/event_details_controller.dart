import 'package:flutter/material.dart';
import 'package:fun_zippy/app/data/model/EventDetailsModel.dart';
import 'package:fun_zippy/app/widgets/error_snackbar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../data/model/ApiResponseModel.dart';
import '../../../data/repository/user_repository.dart';
import '../../../routes/app_pages.dart';
import '../../../data/repository/event_repository.dart';
import '../../../widgets/progress.dart';

class EventDetailsController extends GetxController {
  RxBool loading = false.obs;
  EventDetailsModel eventDetailsModel = EventDetailsModel();
  late String uid;

  TextEditingController? nameController = TextEditingController();
  TextEditingController? phoneController = TextEditingController();
  TextEditingController? emailController = TextEditingController();
  ApiResponseModel apiResponseModel = ApiResponseModel();

  signUp() async {
    ProgressBar.start();

    try {
      var response = await UserRepository().signUp(
          email: emailController!.text.toString(),
          password: 'pass',
          name: nameController!.text.toString(),
          phone: phoneController!.text.toString());

      apiResponseModel = ApiResponseModel.fromJson(response);

      if (apiResponseModel.success == true) {
        ProgressBar.stop();
        // OtpVerificationController.to.phone = completePhoneNumber;
        // OtpVerificationController.to.email = emailTextEditingController.text;
        // OtpVerificationController.to.previousRoute = Routes.SIGN_UP;
        Get.toNamed(Routes.OTP_VERIFICATION);
        // OtpVerificationController.to.getOtp();
      } else {
        ProgressBar.stop();
        errorSnackbar(title: response['statusDescription'], desc: '');
      }
    } catch (e) {
      ProgressBar.stop();
      print(e);
    }
  }

  @override
  void onInit() {
    super.onInit();
    uid = Get.arguments;
    getEventDetails(uid: uid);
  }

  String formatTimeRange(String startDateTime, String endDateTime) {
    final startDateTimeParsed = DateTime.parse(startDateTime).toLocal();
    final endDateTimeParsed = DateTime.parse(endDateTime).toLocal();

    final startFormatted = DateFormat('hh:mm a').format(startDateTimeParsed);
    final endFormatted = DateFormat('hh:mm a').format(endDateTimeParsed);

    return '$startFormatted - $endFormatted';
  }

  String formatDate(String timeString) {
    // we need to convert our local time then do add ".toLocal()".
    final dateTime = DateTime.parse(timeString);
    final formattedDate = DateFormat('d MMMM').format(dateTime);
    return formattedDate;
  }

  getEventDetails({required String uid}) async {
    try {
      loading.value = true;
      var response = await EventRepository().getEventDetails(uid: uid);
      eventDetailsModel = EventDetailsModel.fromJson(response);

      print(eventDetailsModel);
      loading.value = false;
    } catch (e) {
      errorSnackbar(title: '', desc: '');
      loading.value = false;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
