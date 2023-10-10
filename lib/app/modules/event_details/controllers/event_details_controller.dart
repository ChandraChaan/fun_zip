import 'package:fun_zippy/app/data/model/EventDetailsModel.dart';
import 'package:fun_zippy/app/widgets/error_snackbar.dart';
import 'package:get/get.dart';

import '../../../data/repository/event_repository.dart';

class EventDetailsController extends GetxController {
  RxBool loading = false.obs;
  EventDetailsModel eventDetailsModel = EventDetailsModel();
  late String uid;

  @override
  void onInit() {
    super.onInit();
    uid = Get.arguments;
    getEventDetails(uid: uid);
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
