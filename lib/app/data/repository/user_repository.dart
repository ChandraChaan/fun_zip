import 'dart:async';

import 'package:dio/dio.dart';

import '../../networking/api.dart';

class UserRepository {
  late Response response;
  Completer completer = Completer();
  //* login with email
  Future signInWithPhone(
      {required String phone, required String password}) async {
    try {
      response = await Api().post('/user/authenticate', data: {
        "phoneNumber": phone,
        "password": password,
        "products": ["event"]
      });

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future signInWthEmail(
      {required String email, required String password}) async {
    try {
      response = await Api().post('/user/authenticate', data: {
        "emailAddress": email,
        "password": password,
        "products": ["event"]
      });

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }
  //* login with Phone

  Future signUp(
      {required String email,
      required String password,
      required String name,
      required String phone}) async {
    try {
      response = await Api().post('/user/enrollUser', data: {
        "emailAddress": email,
        "nickname": name,
        "phoneNumber": phone,
        "password": password,
        "products": ["event"]
      });

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future forgotPasswordByPhone({required String phone}) async {
    try {
      response = await Api().post('/user/generateTempToken', data: {
        "phoneNumber": phone,
        "products": ["event"],
      });

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future forgotPasswordByEmail({required String email}) async {
    try {
      response = await Api().post('/user/validateTempToken', data: {
        "emailAddress": email,
        "products": ["event"],
      });

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future getOTPByPhone({
    required String phone,
  }) async {
    try {
      response = await Api().post('/user/generateTempToken', data: {
        "phoneNumber": phone,
        "products": ["event"]
      });

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future getOTPByEmail({
    required String email,
  }) async {
    try {
      response = await Api().post('/user/generateTempToken', data: {
        "emailAddress": email,
        "products": ["event"]
      });

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future verifyPhoneOTP({
    required String phone,
    required String otp,
  }) async {
    try {
      response = await Api().post('/user/validateTempToken', data: {
        "phoneNumber": phone,
        "tempPasswordToken": otp,
        "products": ["event"]
      });

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }

  Future verifyPhoneEmail({
    required String email,
    required String otp,
  }) async {
    try {
      response = await Api().post('/user/validateTempToken', data: {
        "emailAddress": email,
        "tempPasswordToken": otp,
        "products": ["event"]
      });

      if (response.statusCode == 200) {
        completer.complete(response.data);
      }
    } catch (e) {
      completer.complete(response.data);
    }

    return completer.future;
  }
}
