import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fun_zippy/app/modules/create_event/views/components/SuccessfulEvent.dart';
import 'package:fun_zippy/app/modules/sign_in/controllers/sign_in_controller.dart';
import 'package:fun_zippy/app/utilities/date_time_format.dart';
import 'package:get/get.dart';
import '../../../data/model/AddEventBodyModel.dart';
import '../../../data/model/ApiResponseModel.dart';
import '../../../data/model/Suggestion.dart';
import '../../../data/repository/event_repository.dart';

import '../../../widgets/error_snackbar.dart';
import '../../../widgets/progress.dart';
import '../../home/controllers/home_controller.dart';

class CreateEventController extends GetxController {
  static CreateEventController get to => Get.find();
  final pageController = PageController();
  RxInt currentPage = 0.obs;
  int STEPS = 4;
  RxBool loading = false.obs;
  RxInt selectedEventLocality = 0.obs;
  RxInt selectedLiveStreamProvider = 0.obs;
  RxInt selectedEventAccess = 0.obs;
  final formKey = GlobalKey<FormBuilderState>();
  RxString thumbnailImage = ''.obs;
  TextEditingController? eventNameTextEditingController =
      TextEditingController();
  TextEditingController? eventDescriptionTextEditingController =
      TextEditingController();
  TextEditingController? startDateTextEditingController =
      TextEditingController();
  TextEditingController? startTimeTextEditingController =
      TextEditingController();
  TextEditingController? endDateTextEditingController = TextEditingController();
  TextEditingController? endTimeTextEditingController = TextEditingController();

  TextEditingController? locationTextEditingController =
      TextEditingController();

  TextEditingController? address1TextEditingController =
      TextEditingController();
  TextEditingController? cityTextEditingController = TextEditingController();
  TextEditingController? stateTextEditingController = TextEditingController();
  TextEditingController? countryTextEditingController = TextEditingController();
  TextEditingController? postalCodeTextEditingController =
      TextEditingController();

  DateTime? startDate;
  DateTime? endDate;
  String? recurringRepeat;
  String? selectedCategory;
  String? selectedSubCategory;
  String? latitude;
  String? longitude;
  Place? selectedPlace;

  ApiResponseModel apiResponseModel = ApiResponseModel();

  @override
  void onInit() {
    super.onInit();
    //  debounce(
    //   pageController.page,
    //   (value) {
    //     print("debounce -> " + value.toString());
    //   },
    //   time: Duration(seconds: 2),
    // );

    // getCategories();
  }

  generateDescription() async {
    ProgressBar.start();

    try {
      var response = await EventRepository().generateDescription(
          description: '${eventNameTextEditingController?.text}');

      print(response);

      apiResponseModel = ApiResponseModel.fromJson(response);

      if (apiResponseModel.success == true) {
        ProgressBar.stop();
        eventDescriptionTextEditingController?.text =
            apiResponseModel.data['answer'];
      } else {
        ProgressBar.stop();
        errorSnackbar(title: response['statusDescription'], desc: '');
      }
    } catch (e) {
      ProgressBar.stop();

      print(e);
    }
  }

  List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(listOfCities);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }

  late AddEventBodyModel addEventBodyModel = AddEventBodyModel();

  createAnEvent() async {
    ProgressBar.start();
    // addEventBodyModel = AddEventBodyModel(
    //   uid: "${userModel.sId ?? ''}",
    //   companyId: 0,
    //   attendanceModes: ["InPerson"],
    //   searchTags: ["Things to do"],
    //   liveStream: false,
    //   rsvpRequired: false,
    //   contacts: [
    //     Contacts(
    //         companyId: 0,
    //         firstName: "Chiranji",
    //         lastName: "Chiranji",
    //         phoneNumber: "3609917711",
    //         emailAddress: "test@test.com",
    //         name: "Chiranji Chiranji"),
    //   ],
    //   fundRaisingEvent: false,
    //   likes: 0,
    //   shares: 0,
    //   detailViews: 0,
    //   featured: false,
    //   fundrisingEvent: false,
    //   nonProfitEvent: false,
    //   govtBodyEvent: false,
    //   name: "${eventNameTextEditingController?.text ?? ''}",
    //   description: "${eventDescriptionTextEditingController?.text ?? ''}",
    //   locationName: "${locationTextEditingController?.text ?? ''}",
    //   postalCode: "${postalCodeTextEditingController?.text ?? ''}",
    //   visibility: "Public",
    //   startDate: "${startDateTextEditingController?.text ?? ''}",
    //   startTime: "${startTimeTextEditingController?.text ?? ''}",
    //   endDate: "${endDateTextEditingController?.text ?? ''}",
    //   endTime: "${endTimeTextEditingController?.text ?? ''}",
    //   recurringRepeat: "${recurringRepeat ?? ''}",
    //   category1: "${selectedCategory ?? ''}",
    //   category2: "${selectedSubCategory ?? ''}",
    //   address1: "${address1TextEditingController?.text ?? ''}",
    //   city: "${cityTextEditingController?.text ?? ''}",
    //   stateProvince: "${stateTextEditingController?.text ?? ''}",
    //   country: "${selectedPlace?.placemark.isoCountryCode ?? ''}",
    //   latitude: "${selectedPlace!.latitude}",
    //   longitude: "${selectedPlace!.longitude}",
    //   startDateTime: "${startDate ?? ''}",
    //   endDateTime: "${endDate ?? ''}",
    // );

    Map data = {
      "uid": "${userModel.sId ?? ''}",
      "companyId": 0,
      "attendanceModes": ["InPerson"],
      "searchTags": ["Things to do"],
      "liveStream": false,
      "rsvpRequired": false,
      "contacts": [
        {
          "companyId": 0,
          "firstName": userModel.nickname,
          "lastName": userModel.nickname,
          "phoneNumber": userModel.username ?? '',
          "emailAddress": userModel.username,
          "name": userModel.username
        }
      ],
      "fundRaisingEvent": false,
      "likes": 0,
      "shares": 0,
      "detailViews": 0,
      "featured": false,
      "fundrisingEvent": false,
      "nonProfitEvent": false,
      "govtBodyEvent": false,
      "name": "${eventNameTextEditingController?.text ?? ''}",
      "description": "${eventDescriptionTextEditingController?.text ?? ''}",
      "locationName": "${locationTextEditingController?.text ?? ''}",
      "postalCode": "${postalCodeTextEditingController?.text ?? ''}",
      "visibility": "Public",
      "startDate": "${startDateTextEditingController?.text ?? ''}",
      "startTime": "${startTimeTextEditingController?.text ?? ''}",
      "endDate": "${endDateTextEditingController?.text ?? ''}",
      "endTime": "${endTimeTextEditingController?.text ?? ''}",
      "recurringRepeat": "${recurringRepeat ?? ''}",
      "category1": "${selectedCategory ?? ''}",
      "category2": "${selectedSubCategory ?? ''}",
      "address1": "${address1TextEditingController?.text ?? ''}",
      "city": "${cityTextEditingController?.text ?? ''}",
      "stateProvince": "${stateTextEditingController?.text ?? ''}",
      "country": "${selectedPlace?.placemark.isoCountryCode ?? ''}",
      "latitude": "${selectedPlace!.latitude ?? ''}",
      "longitude": "${selectedPlace!.longitude ?? ''}",
      "startDateTime": forMatDateForEvent(startDate!),
      "endDateTime": forMatDateForEvent(endDate!),
    };

    try {
      // Map data = addEventBodyModel.toJson();
      var response = await EventRepository().createAnEvent(data: data);

      print(response);

      apiResponseModel = ApiResponseModel.fromJson(response);

      if (apiResponseModel.statusDescription == 'Success') {
        ProgressBar.stop();

        String uid = apiResponseModel.data['id'];

        Get.to(SuccessfulEventPage(), arguments: uid);
      } else {
        ProgressBar.stop();
        errorSnackbar(title: response['statusDescription'], desc: '');
      }
    } catch (e) {
      ProgressBar.stop();

      print(e);
    }
  }

  afterEventCreationCallThisAPI(String uid) async {
    ProgressBar.start();

    try {
      var response =
          await EventRepository().afterEventCreationCallThisAPI(data: {
        "companyId": 0,
        "eventTeamMembers": [
          {
            "uid": "${userModel.sId ?? ''}",
            "companyId": 0,
            "firstName": "${userModel.nickname ?? ''}",
            "lastName": "${userModel.nickname ?? ''}",
            "phoneNumber": "3609917711",
            "emailAddress": "${userModel.username ?? ''}",
            "userId": "${userModel.sId ?? ''}",
            "roles": ["Organizer", "Admin"],
            "amount": 0,
            "amountIn": false,
            "name": "${userModel.nickname ?? ''}",
          }
        ],
        "maxTicketNumber": 0,
        "eventId": "$uid"
      });

      print(response);

      apiResponseModel = ApiResponseModel.fromJson(response);
      // Get.delete<HomeController>();
      // Get.delete<CreateEventController>();

      // Get.toNamed(Routes.HOME);

      // Get.back();
      // Get.back();
      // Get.offNamedUntil(Routes.HOME, (route) => false); // RouteName
      ProgressBar.stop();

      HomeController.to.selectedIndex.value = 0;
      Get.delete<CreateEventController>(force: true);

      // Get.offNamedUntil(Routes.HOME, (route) => false);
      Get.back();
    } catch (e) {
      ProgressBar.stop();

      print(e);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();

    eventNameTextEditingController!.text = "";

    eventDescriptionTextEditingController!.text = "";
    startDateTextEditingController!.text = "";
    startTimeTextEditingController!.text = "";
    endDateTextEditingController!.text = "";
    endTimeTextEditingController!.text = "";

    locationTextEditingController!.text = "";

    address1TextEditingController!.text = "";
    cityTextEditingController!.text = "";
    stateTextEditingController!.text = "";
    countryTextEditingController!.text = "";
    postalCodeTextEditingController!.text = "";

    currentPage = 0.obs;
  }
}

/// A fake service to filter cities based on a query.