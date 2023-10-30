// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../data/model/Suggestion.dart';

class LocationProvider {
  LocationProvider(this.sessionToken);

  final sessionToken;

  static final String androidKey = 'AIzaSyCUk4iIsoxIiCuuqDilrJyMcTYos4hrIIo';
  static final String iosKey = 'AIzaSyCUk4iIsoxIiCuuqDilrJyMcTYos4hrIIo';
  final apiKey = Platform.isAndroid ? androidKey : iosKey;

  Future<List<Suggestion>> fetchSuggestions(String input, String lang) async {
    final request =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&types=address&language=$lang&key=$apiKey&sessiontoken=$sessionToken';
    final response = await Dio().get(request);

    if (response.statusCode == 200) {
      final result = response.data;

      // final result = json.decode(response.body);
      if (result['status'] == 'OK') {
        // compose suggestions in a list
        return result['predictions']
            .map<Suggestion>((p) => Suggestion(p['place_id'], p['description']))
            .toList();
      }
      if (result['status'] == 'ZERO_RESULTS') {
        return [];
      }
      throw Exception(result['error_message']);
    } else {
      throw Exception('Failed to fetch suggestion');
    }
  }

  Future<Place> getAddressDetails(String description) async {
    List<Location> locations = await locationFromAddress('$description');

    Location firstLocation = locations.first;

    List<Placemark> places = await placemarkFromCoordinates(
        firstLocation.latitude, firstLocation.longitude);

    return Place(
        latitude: firstLocation.latitude,
        longitude: firstLocation.longitude,
        placemark: places.first);

    // return places.first;
  }
}

Future<bool> handleLocationPermission() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    Get.snackbar(
        'Location services are disabled. Please enable the services', '');
    return false;
  }
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      Get.snackbar('Location permissions are denied', '');
      return false;
    }
  }
  if (permission == LocationPermission.deniedForever) {
    Get.snackbar(
        'Location permissions are permanently denied, we cannot request permissions.',
        '');
    return false;
  }
  return true;
}

Future<Position?> getCurrentPosition() async {
  final hasPermission = await handleLocationPermission();

  if (!hasPermission) return null;
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  return position;
}

Future<Placemark> getUserAddress(
    {required latitude, required longitude}) async {
  List<Placemark> places = await placemarkFromCoordinates(latitude, longitude);

  return places.first;
}
