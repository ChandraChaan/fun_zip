import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import '../../../data/model/HomeApiResponseModel.dart';
import '../../../data/repository/event_repository.dart';
import '../../../routes/app_pages.dart';
import '../../../utilities/LocationProvider.dart';
import '../../../widgets/error_snackbar.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  List<dynamic> tempo = [];

  static HomeController get to => Get.find();
  Rx<HomeApiResponseModel> apiResponseModel = HomeApiResponseModel().obs;
  Rx<Placemark> userAddress = Placemark().obs;
  RxBool loading = true.obs;
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

   // getAllEvents();
  fetchData();
  print('sathya ');
  }

  RxInt selectedIndex = 0.obs;

  // getAllEvents() async {
  //   loading.value = true;
  //   Map data = {
  //     "pageNo": "1",
  //     "resultsPerPage": 18,
  //     "latitude": "${userPosition!.latitude}",
  //     "longitude": "${userPosition!.longitude}",
  //     "radius": 50,
  //     "dateRange": "",
  //     "name": "${searchEventTextEditingController?.text ?? ''}",
  //     "city": "${selectedCity ?? userAddress.value.locality ?? ''}",
  //     //"category1": "${selectedCategory ?? ''}",
  //     "category1": "",
  //     "attendanceMode": "${selectedModeOnline ?? false}",
  //   };
  //   try {
  //     var response = await EventRepository().getAllEvents(data);
  //     print('sathya first');
  //     apiResponseModel.value = HomeApiResponseModel.fromJson(response.obs);
  //     print('sathya debug');
  //     print(apiResponseModel.value.totalResultCount);
  //     print('painavi list checking');
  //     loading.value = false;
  //   } catch (e) {
  //     loading.value = false;
  //   }
  // }

  // API call new


  Future<void> fetchData() async {
    print('sathya entering fetchData');

    final url = Uri.parse('https://funzippy.com/event/search');
    Map<String, dynamic> data = {
      "pageNo": "1",
      "resultsPerPage": 18,
      "latitude": "${userPosition!.latitude}",
      "longitude": "${userPosition!.longitude}",
      "radius": 50,
      "dateRange": "",
      "name": "${searchEventTextEditingController?.text ?? ''}",
      "city": "${selectedCity ?? userAddress.value.locality ?? ''}",
      "category1": "", // You have two "category1" lines, remove the duplicate
      "attendanceMode": "${selectedModeOnline ?? false}",
    };

    final response = await http.post(url, body: json.encode(data), headers: {
      'Content-Type': 'application/json', // Set the content type to JSON
    });

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON data
      final responseData = json.decode(response.body);
      // Initialize templist if not already done
      List<dynamic> tempo = [];
      if (responseData['results'] is List) {
        tempo.addAll(responseData['results']);
        print('tempo.length'); // Use .length to get the length
        print(tempo.length);
        print('sathya templist');
      } else {
        print('Response data is not a list');
      }
    } else {
      // If the server did not return a 200 OK response, throw an exception
      throw Exception('Failed to load data');
    }
  }


// new api above one

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
