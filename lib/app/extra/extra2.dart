import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CalSathya extends StatefulWidget {
  @override
  _CalSathyaState createState() => _CalSathyaState();
}

class _CalSathyaState extends State<CalSathya> {
  final String eventName = "Sample Event";
  final String eventLocation = "Sample Location";
  final DateTime eventStartTime = DateTime.now();
  final DateTime eventEndTime = DateTime.now().add(Duration(hours: 1));

  String selectedCalendar = 'Select Calendar';

  Future<void> _addToCalendar(String calendarType) async {
    String url;

    switch (calendarType) {
      case 'google':
        url = 'https://www.google.com/calendar/render?action=TEMPLATE&text=$eventName&dates=${eventStartTime.toUtc().toIso8601String().substring(0, 19)}Z/${eventEndTime.toUtc().toIso8601String().substring(0, 19)}Z&details=$eventLocation&location=$eventLocation';
        break;
      case 'yahoo':
        url = 'https://calendar.yahoo.com/?v=60&view=d&type=20&title=$eventName&st=${eventStartTime.toUtc().toIso8601String().substring(0, 19)}Z&et=${eventEndTime.toUtc().toIso8601String().substring(0, 19)}Z&desc=$eventLocation&in_loc=$eventLocation';
        break;
      case 'ical':
        url = 'data:text/calendar;charset=utf8,BEGIN:VCALENDAR\nVERSION:2.0\nBEGIN:VEVENT\nSUMMARY:$eventName\nLOCATION:$eventLocation\nDTSTART:${eventStartTime.toUtc().toIso8601String().substring(0, 19)}Z\nDTEND:${eventEndTime.toUtc().toIso8601String().substring(0, 19)}Z\nEND:VEVENT\nEND:VCALENDAR';
        break;
      case 'outlook':
        url = 'https://outlook.live.com/calendar/0/deeplink/compose?path=/calendar/action/compose&rru=addevent&startdt=${eventStartTime.toUtc().toIso8601String().substring(0, 19)}Z&enddt=${eventEndTime.toUtc().toIso8601String().substring(0, 19)}Z&subject=$eventName&body=$eventLocation&location=$eventLocation';
        break;
      default:
        throw 'Unsupported calendar type';
    }

    // Send event data to the server
    await _sendEventDataToServer(calendarType);

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _sendEventDataToServer(String calendarType) async {
    final String serverUrl = 'https://your-server-url.com'; // Replace with your server URL

    final Map<String, dynamic> eventData = {
      'type': calendarType,
      'event': {
        'name': eventName,
        'location': eventLocation,
        'startTime': eventStartTime.toUtc().toIso8601String(),
        'endTime': eventEndTime.toUtc().toIso8601String(),
      },
    };

    final response = await http.post(
      Uri.parse('$serverUrl/add-event'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(eventData),
    );

    if (response.statusCode != 200) {
      print('Failed to send event data to server');
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar Event Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedCalendar,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              onChanged: (String? newValue) {
                setState(() {
                  selectedCalendar = newValue!;
                });
              },
              items: <String>['Select Calendar', 'Google', 'Yahoo', 'iCal', 'Outlook']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: selectedCalendar != 'Select Calendar' ? () => _addToCalendar(selectedCalendar.toLowerCase()) : null,
              child: Text('Add to $selectedCalendar Calendar'),
            ),
          ],
        ),
      ),
    );
  }

  canLaunch(String url) {}

  launch(String url) {}
}
