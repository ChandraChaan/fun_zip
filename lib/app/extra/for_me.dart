// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// Future<void> fetchData() async {
//   final url = Uri.parse('https://funzippy.com/user/resetPassword');
//   Map<String, dynamic> bodyData = {
//     "emailAddress": "nmeda@openteqgroup.com",
//     "tempPasswordToken": "754a",
//     "password": "12345",
//     "products": ["event"]
//   };
//
//   try {
//     final response = await http.post(
//       url,
//       body: jsonEncode(bodyData),
//       headers: {'Content-Type': 'application/json'}, // Set the content type for JSON data
//     );
//
//     if (response.statusCode == 200) {
//       // If the server returns a 200 OK response, parse the JSON data
//       final data = json.decode(response.body);
//
//       if (data.containsKey('products')) {
//         // Ensure the 'products' key exists in the response data
//         items.addAll(List<String>.from(data['products']));
//         Get.defaultDialog(title: "Success");
//         print(items.toString());
//       } else {
//         // Handle the case when 'products' key is missing
//         Get.defaultDialog(title: "Failure", middleText: "Missing 'products' key in response");
//       }
//     } else {
//       // If the server did not return a 200 OK response, handle the error
//       Get.defaultDialog(title: "Failure", middleText: "Failed to load data");
//     }
//   } catch (e) {
//     // Handle any exceptions that may occur during the HTTP request
//     Get.defaultDialog(title: "Error", middleText: "An error occurred: $e");
//   }
// }
