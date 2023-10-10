import 'dart:async';
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
}
