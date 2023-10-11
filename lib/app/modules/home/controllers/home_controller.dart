import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import '../../../data/model/HomeApiResponseModel.dart';
import '../../../data/repository/event_repository.dart';
import '../../../routes/app_pages.dart';
import '../../../utilities/LocationProvider.dart';
import '../../../widgets/error_snackbar.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  Rx<HomeApiResponseModel> apiResponseModel = HomeApiResponseModel().obs;
  Rx<Placemark> userAddress = Placemark().obs;
  RxBool loading = false.obs;
  int currentSlide = 0;
  TextEditingController? searchEventTextEditingController =
      TextEditingController();
  String? selectedCity;
  String? selectedCategory;
  bool? selectedModeOnline = false;
  List<String> items = ['Party', 'Music', for (int a = 1; a < 9; a++) 'Comedy $a'];
//foreach, each,
  @override
  void onInit() {
    super.onInit();
    getUserLocation();
    getCategories();
    getCities();
  }

  late Position? userPosition;

  getUserLocation() async {
    userPosition = await getCurrentPosition();

    userAddress.value = await getUserAddress(
        latitude: userPosition!.latitude, longitude: userPosition!.longitude);

    getAllEvents();
  }

  RxInt selectedIndex = 0.obs;

  getAllEvents() async {
    loading.value = true;
    Map data = {
      "pageNo": "1",
      "resultsPerPage": 18,
      "latitude": "${userPosition!.latitude}",
      "longitude": "${userPosition!.longitude}",
      "radius": 50,
      "dateRange": "",
      "name": "${searchEventTextEditingController?.text ?? ''}",
      "city": "${selectedCity ?? userAddress.value.locality ?? ''}",
      "category1": "${selectedCategory ?? ''}",
      "attendanceMode": "${selectedModeOnline ?? false}",
    };
    try {
      var response = await EventRepository().getAllEvents(data);
      apiResponseModel.value = HomeApiResponseModel.fromJson(response);
      loading.value = false;
    } catch (e) {
      loading.value = false;
    }
  }

  goToEventDetailsPage({required String uid}) {
    Get.toNamed(Routes.EVENT_DETAILS, arguments: uid);
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getCategories() async {
    try {
      var response = await EventRepository().getCategories();

      if (response != null) {
        response.forEach((element) {
          listOfCategory.add(element.toString());
        });
      } else {
        errorSnackbar(title: 'Category not found', desc: '');
      }
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }

  getCities() async {
    try {
      var response = await EventRepository().getCities();

      if (response != null) {
        response.forEach((element) {
          listOfCities.add(element.toString());
        });
      } else {
        errorSnackbar(title: 'Category not found', desc: '');
      }
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }
}

List<String> listOfCities = [];

List<String> listOfCategory = [];
