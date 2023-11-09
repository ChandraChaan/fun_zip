// import 'dart:convert'; // Import the jsonDecode function
//
// // ... (other imports)
//
// class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
//   // ... (existing code)
//
//   Future<void> checkValidityAndExpiration(String qrCodeData) async {
//     print('QR validity checking coming');
//     final isValid = await isQRCodeValid(qrCodeData);
//
//     if (isValid) {
//       print('QR is valid coming');
//       await showDialog(
//         context: context,
//         builder: (context) {
//           return QrSuccessfulScreen();
//         },
//       );
//     } else {
//       print('QR not valid');
//       await showDialog(
//         context: context,
//         builder: (context) {
//           return QrErrorScreen();
//         },
//       );
//     }
//
//     // Move resetQRScanner to after the dialog is dismissed.
//     _resetQRScanner();
//   }
//
//   Future<bool> isQRCodeValid(String qrCodeData) async {
//     print('QR valid checking coming');
//     final getStorage = GetStorage();
//     final userMap = getStorage.read('user');
//     if (userMap != null) {
//       userModel = UserModel.fromJson(userMap);
//     }
//     if (qrCodeData.isNotEmpty) {
//       print('QR is not empty');
//       final apiUrl = qrCodeData; // Use qrCodeData directly
//       final headers = {
//         'Cookie': 'AuthToken=${userModel!.token};', // Use userModel safely
//       };
//
//       try {
//         final response = await http.get(Uri.parse(apiUrl), headers: headers);
//         print('QR the API results coming ${response.body}');
//         if (response.statusCode == 200 || response.statusCode == 201) {
//           final responseJson = jsonDecode(response.body); // Parse JSON response
//           if (responseJson.containsKey('success') && responseJson['success'] == true) {
//             return true;
//           }
//         }
//       } catch (e) {
//         print('Error in API request: $e');
//       }
//     }
//
//     return false;
//   }
// }
