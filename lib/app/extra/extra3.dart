// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart as http;
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('API Call Example'),
//         ),
//         body: MyApiCallWidget(),
//       ),
//     );
//   }
// }
//
// class MyApiCallWidget extends StatefulWidget {
//   @override
//   _MyApiCallWidgetState createState() => _MyApiCallWidgetState();
// }
//
// class _MyApiCallWidgetState extends State<MyApiCallWidget> {
//   String _response = 'No data yet';
//
//   Future<void> fetchData() async {
//     final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
//
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       setState(() {
//         _response = data.toString();
//       });
//     } else {
//       setState(() {
//         _response = 'Error: ${response.statusCode}';
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           ElevatedButton(
//             onPressed: fetchData,
//             child: Text('Make API Call'),
//           ),
//           SizedBox(height: 20),
//           Text('API Response:'),
//           SizedBox(height: 10),
//           Text(_response),
//         ],
//       ),
//     );
//   }
// }
