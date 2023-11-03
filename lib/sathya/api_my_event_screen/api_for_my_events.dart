import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyHomePage extends GetxController {
  var data = {}.obs;

  Future<void> fetchDataApi() async {
    final response = await http.get(Uri.parse(
        'https://funzippy.com/auth/event/event/search/getManagedEvents?csrftkn=dINIu&null'));

    if (response.statusCode == 200) {
      data.value = json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void onInit() {
    fetchDataApi(); // Fetch data when the page is initialized
    super.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX API Example'),
      ),
      body: Center(
        child: Obx(() {
          if (data.isEmpty) {
            return CircularProgressIndicator();
          } else {
            return Text('Title: ${data['title']}');
          }
        }),
      ),
    );
  }
}
