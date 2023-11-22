import 'package:flutter/material.dart';

class YourPage extends StatefulWidget {
  @override
  _YourPageState createState() => _YourPageState();
}

class _YourPageState extends State<YourPage> {
  final TextEditingController partyNameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Page'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              height: 35,
              margin: EdgeInsets.all(16),
              child: TextFormField(
                controller: partyNameController,
                decoration: InputDecoration(
                  hintText: 'The Great Gatsby Party: Hyderabad',
                  hintStyle: TextStyle(fontSize: 10),
                  filled: true,
                  fillColor: Color(0XFFF5F4F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This is a mandatory field.';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // The form is valid, perform your next button logic here
                  // For example, you can navigate to the next screen
                }
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
