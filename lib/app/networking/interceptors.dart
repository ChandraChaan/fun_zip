// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:developer';
// import 'package:buyer/app/routes/app_pages.dart';
// import 'package:buyer/app/utilities/print_log.dart';
// import 'package:buyer/app/widgets/alert.dart';

import 'package:dio/dio.dart';
// import 'package:get/get.dart' as getx;
// import 'package:get_storage/get_storage.dart';
import 'dart:async';
import 'dart:io';

import '../utilities/print_log.dart';
// import 'package:connectivity/connectivity.dart';

// Connectivity connectivity = Connectivity();

class CustomInterceptors extends InterceptorsWrapper {
  Dio previous;
  Dio refreshDio = Dio();

  // var storage = Hive.box('storage');
  // final storage = GetStorage();

  CustomInterceptors(
    this.previous,
  ) {
    this.previous = previous;
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // log('send request：${options.baseUrl}${options.path}');
    printGreen('send request');
    printWhite('${options.baseUrl}${options.path}');
    printGreen('request data');
    printWhite('${options.data}');

    // // get [token] from shared or localStorage or Redis Or Sqflite
    // String accessToken = await getToken();

    // if (accessToken == null) {
    //   if (options.path.toString() != "/getOtp" &&
    //       options.path.toString() != "/login-mobile" &&
    //       options.path.toString() != "/signin" &&
    //       options.path.toString() != "/signup" &&
    //       options.path.toString() != "/register" &&
    //       //options.path.toString() != "/resend_otp_again" &&
    //       options.path.toString() != "/page") {
    //     await logout();
    //   }
    // }

    // options.headers["Content-Type"] = "application/json";
    // options.headers["User-Agent"] = "PostmanRuntime/7.32.3";
    // options.headers["Accept"] = "*/*";
    // options.headers["Accept-Encoding"] = "gzip, deflate, br";
    // options.headers["Connection"] = "keep-alive";

    // bool internetConnected =
    //     await NoInternetPageController.to.checkInternetConnectivity();
    // if (internetConnected == true) {
    //   return options;
    // } else {
    //   get_package.Get.dialog(
    //     NoInternetPageView(),
    //     barrierDismissible: false,
    //   );
    //   // return refreshDio.reject(options);
    // }

    // return options;
    // print('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  logout() async {
    // await clearTokens();

    return;
    // throw DioError(error: 'Token not found. Please do Login.');
  }

  // Future saveToken(String token) async => await storage.write('token', token);

  // Future getToken() async {
  //   try {
  //     // User tempUser = storage.get('user');
  //     final token = await storage.read('token');
  //     // debugPrint("TOKEN==== ${token ?? ''}");
  //     printCyan("Api TOKEN");
  //     printGreen("${token ?? ''}");
  //     return token;
  //   } catch (e) {
  //     log("EXCEPTION====== BO TOKEN" + e.toString());
  //     return null;
  //   }
  // }

  // saveRefresh(String token) async => await storage.write('token', token);

  // getRefreshToken() async => await storage.read('app-refresh');

  // Future clearTokens() async => await storage.erase();

  // 200 && 201 OK
  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    // return response; // continue
    printGreen('response  data');
    printWhite('${response}');
    return super.onResponse(response, handler);
  }

  bool _shouldRetry(DioError err) {
    return err.error != null && err.error is SocketException;
  }

  // Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
  //   StreamSubscription streamSubscription;
  //   final responseCompleter = Completer<Response>();

  //   streamSubscription = connectivity.onConnectivityChanged.listen(
  //     (connectivityResult) {
  //       if (connectivityResult != ConnectivityResult.none) {
  //         streamSubscription.cancel();
  //         responseCompleter.complete(
  //           refreshDio.request(requestOptions.path,
  //               cancelToken: requestOptions.cancelToken,
  //               data: requestOptions.data,
  //               onReceiveProgress: requestOptions.onReceiveProgress,
  //               onSendProgress: requestOptions.onSendProgress,
  //               queryParameters: requestOptions.queryParameters,
  //               options: Options(
  //                   method: requestOptions.method,
  //                   sendTimeout: requestOptions.sendTimeout,
  //                   receiveTimeout: requestOptions.receiveTimeout,
  //                   extra: requestOptions.extra,
  //                   headers: requestOptions.headers,
  //                   responseType: requestOptions.responseType,
  //                   contentType: requestOptions.contentType,
  //                   validateStatus: requestOptions.validateStatus,
  //                   receiveDataWhenStatusError:
  //                       requestOptions.receiveDataWhenStatusError,
  //                   followRedirects: requestOptions.followRedirects,
  //                   maxRedirects: requestOptions.maxRedirects,
  //                   requestEncoder: requestOptions.requestEncoder,
  //                   responseDecoder: requestOptions.responseDecoder,
  //                   listFormat: requestOptions.listFormat)),
  //         );
  //       }
  //     },
  //   );

  //   return responseCompleter.future;
  // }

  @override
  Future onError(DioException error, ErrorInterceptorHandler handler) async {
    // printRed(error?.error?.toString());
    // print(error?.error);

    // if (error.response?.statusCode == 401) {
    //   // printRed(error?.response?.data?.toString());
    //   String tempErrorText = error?.response?.data['statusDescription'] ?? '';

    //   // storage.erase();
    //   // getx.Get.offAllNamed(Routes.SIGNIN);
    //   // Alert().snaksbar('Alert!', tempErrorText);
    // } else {
    //   if (_shouldRetry(error)) {
    //     try {
    //       // return scheduleRequestRetry(error.requestOptions);
    //     } catch (e) {
    //       return e;
    //     }
    //   }
    // }

    // return error;
    print(
        'ERROR[${error.response?.statusCode}] => PATH: ${error.requestOptions.path}');
    return super.onError(error, handler);
    // Assume 401 stands for token expired

    //  error.error 110
    // retry function
    // if (error.error.toString().contains('errno = 11')) {
    //   print(error.error.toString());
    //   RequestOptions options = error.request;

    //   return previous.request(options.path, options: options);
    // }

    // if (error.response?.statusCode == 401 &&
    //     error.response?.data['sub_status'] == 42) {
    //   RequestOptions options = error.request;

    //   // If the token has been updated, repeat directly.
    //   String accessToken = await getToken();

    //   String token = "Bearer $accessToken";
    //   if (token != options.headers["Authorization"]) {
    //     options.headers["Authorization"] = token;
    //     return previous.request(options.path, options: options);
    //   }

    //   // Lock to block the incoming request until the token updated
    //   previous.lock();
    //   previous.interceptors.responseLock.lock();
    //   previous.interceptors.errorLock.lock();

    //   try {
    //     // GET the [refresh token] from shared or LocalStorage or ....
    //     //String refreshToken = await getRefreshToken();

    //     /*  Response responseRefresh = await refreshDio.post(
    //         "${options.baseUrl}/refresh",
    //         data: {},
    //         options:
    //             Options(headers: {'Authorization': "Bearer $refreshToken"})); */

    //     Response responseRefresh = await refreshDio.post(
    //       "${options.baseUrl}/refresh",
    //       data: {},
    //     );
    //     //update token based on the new refresh token
    //     options.headers["Authorization"] =
    //         "Bearer ${responseRefresh.data['token']}";

    //     // Save the new token on shared or LocalStorage
    //     // await saveToken(responseRefresh.data['token']);

    //     previous.unlock();
    //     previous.interceptors.responseLock.unlock();
    //     previous.interceptors.errorLock.unlock();

    //     // repeat the request with a new options
    //     return previous.request(options.path, options: options);
    //   } catch (e) {
    //     logout();
    //   }
    // }

    // return CheckResponseStatus().returnResponse(error.response);

    // return error;
  }
}
