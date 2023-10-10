// class Place {
//   String? streetNumber;
//   String? street;
//   String? city;
//   String? zipCode;

//   Place({
//     this.streetNumber,
//     this.street,
//     this.city,
//     this.zipCode,
//   });

//   @override
//   String toString() {
//     return 'Place(streetNumber: $streetNumber, street: $street, city: $city, zipCode: $zipCode)';
//   }
// }

import 'package:geocoding/geocoding.dart';

class Suggestion {
  final String placeId;
  final String description;

  Suggestion(this.placeId, this.description);

  @override
  String toString() {
    return 'Suggestion(description: $description, placeId: $placeId)';
  }
}

class Place {
  late dynamic latitude;
  late dynamic longitude;
  late Placemark placemark;
  Place({
    required this.latitude,
    required this.longitude,
    required this.placemark,
  });
}
