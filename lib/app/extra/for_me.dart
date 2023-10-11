import 'package:flutter/material.dart';

class LocationSearchScreensat extends StatefulWidget {
  @override
  _LocationSearchScreensatState createState() =>
      _LocationSearchScreensatState();
}

class _LocationSearchScreensatState extends State<LocationSearchScreensat> {
  TextEditingController _searchController = TextEditingController();
  List<String> suggestions = [
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Elderberry"
  ];
  List<String> searchResults = [];

  void onTextChanged(String query) {
    setState(() {
      searchResults.clear();
      if (query.isNotEmpty) {
        searchResults = suggestions
            .where((suggestion) =>
                suggestion.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  void onSuggestionSelected(String suggestion) {
    _searchController.text = suggestion;
    setState(() {
      searchResults.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Example'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: onTextChanged,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter a search query',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              //controller: _searchController,
              onChanged: onTextChanged,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter a search query',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchResults[index]),
                  onTap: () => onSuggestionSelected(searchResults[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
