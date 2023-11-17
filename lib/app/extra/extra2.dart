import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyTickets extends StatefulWidget {
  const MyTickets({Key? key}) : super(key: key);

  @override
  State<MyTickets> createState() => _MyTicketsState();
}

class _MyTicketsState extends State<MyTickets> {
  Map myTickets = {};

  Future<void> fetchMyTickets() async {
    final String apiUrl = 'YOUR_API_URL_HERE'; // Replace with your API endpoint

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> tickets = data['data']['tickets'];

        setState(() {
          myTickets = {'tickets': tickets};
        });
      } else {
        print('Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  void initState() {
    fetchMyTickets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tickets'),
      ),
      body: myTickets.isNotEmpty
          ? ListView.builder(
        itemCount: myTickets['tickets'].length,
        itemBuilder: (context, index) {
          final ticket = myTickets['tickets'][index];
          return ListTile(
            title: Text(ticket['name']),
            subtitle: Text(ticket['eventName']),
            // Add more fields as needed
          );
        },
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
//