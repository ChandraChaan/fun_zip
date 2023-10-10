import 'package:dio/io.dart';

import 'interceptors.dart';

class Api extends DioForNative {
  Api() {
    options.baseUrl = "https://funzippy.com";
    // options.connectTimeout = 5000;
    // options.receiveTimeout = 3000;
    // kalyan
    options.connectTimeout = Duration(seconds: 60);
    options.receiveTimeout = Duration(seconds: 60);
    CustomInterceptors refreshFlow = CustomInterceptors(this);
    interceptors.add(refreshFlow);
  }
}
