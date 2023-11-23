import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../../modules/sign_in/controllers/sign_in_controller.dart';
import '../../networking/api.dart';

class EventRepository {
  late Response response;
  Completer completer = Completer();

  Future getAllEvents(Map data) async {
    try {
      response = await Api().post('/event/search', data: data);

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future getEventDetails({required String uid}) async {
    try {
      response = await Api().get('/event/$uid');

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future generateDescription({required String description}) async {
    String token = userModel.token;

    try {
      response = await Api().post(
        '/auth/event/event/create/description?AuthToken=$token',
        data: {'prompt': '$description'},
      );

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future getCategories() async {
    try {
      response = await Api().post('/getAutoCompleteOptions',
          data: {"product": "event", "type": "category", "value": ""});

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future getCities() async {
    try {
      response = await Api().post('/getAutoCompleteOptions',
          data: {"product": "event", "type": "cityMetro", "value": ""});

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future createAnEvent({required Map data}) async {
    String token = userModel.token;

    log(data.toString());

    try {
      response = await Api().post(
          '/auth/event/event/create/addEvent?AuthToken=$token',
          data: data);

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future afterEventCreationCallThisAPI({required Map data}) async {
    String token = userModel.token;

    try {
      response = await Api().post(
          'https://funzippy.com/auth/event/event/create/addEventManagement?AuthToken=$token',
          data: data);

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future uploadImage(File file) async {
    try {
      String fileName = file.path.split('/').last;
      FormData formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(file.path, filename: fileName),
      });

      response = await Api().post(
          '/user/user/create/uploadPicture/${userModel.sId}',
          data: formData);

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future getManagedEvents() async {
    String token = userModel.token;

    final headers = {
      'Cookie': 'AuthToken=$token;',
    };

    try {
       response = await Api().get(
          '/auth/event/event/search/getManagedEvents',
          options: Options(headers: headers)
       );
      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
      // Handle the error as needed
    }
    return completer.future;
  }

  Future getProfile() async {
    String token = userModel.token;

    final headers = {
      'Cookie': 'AuthToken=$token;',
    };

    try {
       response = await Api().post(
         "/auth/user/user/search/loginUser",
          options: Options(headers: headers)
       );
      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
      // Handle the error as needed
    }
    return completer.future;
  }

  Future ticketDetails(String uid) async {
    String token = userModel.token;

    final headers = {
      'Cookie': 'AuthToken=$token;',
    };

    try {
       response = await Api().post(
         "/event/payment/getSaleTransaction/h6Wh3RnLi4p",
          options: Options(headers: headers)
       );
      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
      // Handle the error as needed
    }
    return completer.future;
  }

  Future myTicket() async {
    String token = userModel.token;
    // event details evet id

    final headers = {
      'Cookie': 'AuthToken=$token;',
    };

    try {
      response = await Api().get(
          "/auth/event/event/search/my-tickets",
          options: Options(headers: headers)
      );
      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
      // Handle the error as needed
    }
    return completer.future;
  }

  Future byeTickets(productPrice, userName, email, phoneNumber) async {
    String token = userModel.token;
    var body = json.encode({
      "lineItems": [
        {
          "quantity": "$productPrice",
          "eventId": "650faf169b016379ef9a3e2f",
          "eventUid": "905ZCsIyYM5",
          "visibility": "Public",
          "eventImageUrl":
              "https://s3.us-west-2.amazonaws.com/funzippy.events/905ZCsIyYM5/pics/above.jpg",
          "categoryUid": "ZejFZSEbGY9",
          "attendeeType": "12-18",
          "currency": "\$",
          "salePrice": 5,
          "actualPrice": 5,
          "groupDiscountCount": 10,
          "groupDiscountPercentage": 0,
          "groupDiscountPricePerTicket": 1
        }
      ],
      "firstName": "$userName",
      "emailAddress": "$email",
      "phoneNumber": "$phoneNumber"
    });

    final headers = {
      'Cookie': 'AuthToken=$token;',
    };

    try {
      response = await Api().post("/event/buyTickets",
          options: Options(headers: headers), data: body);
      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }
    return completer.future;
  }

  Future postComments({required Map data}) async {
    String token = userModel.token;

    final headers = {
      'Cookie': 'AuthToken=$token;',
    };

    try {
      //https://funzippy.com/?AuthToken=7611c121-c4cf-4778-88e7-8369d0bb69dc
      response = await Api().post(
          "/auth/event/post/create/create",
          options: Options(headers: headers),
        data: data
      );
      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
      // Handle the error as needed
    }
    return completer.future;
  }

  Future getComments({required Map data}) async {
    String token = userModel.token;

    final headers = {
      'Cookie': 'AuthToken=$token;',
    };

    try {
      response = await Api().post(
          "/event/post/view/search",
          options: Options(headers: headers),data: data
      );
      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
      // Handle the error as needed
    }
    return completer.future;
  }


  Future rsvpCall({required Map data}) async {
    String token = userModel.token;

    final headers = {
      'Cookie': 'AuthToken=$token;',
    };

    try {
      response = await Api().post(
          "/event/eventUser/update/rsvp",
          options: Options(headers: headers),data: data
      );
      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
      // Handle the error as needed
    }
    return completer.future;
  }


}
