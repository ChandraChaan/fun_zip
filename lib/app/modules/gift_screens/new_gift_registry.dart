import 'package:flutter/material.dart';

class NewGiftRegisterItem extends StatefulWidget {
  const NewGiftRegisterItem({Key? key}) : super(key: key);

  @override
  State<NewGiftRegisterItem> createState() => _NewGiftRegisterItemState();
}

class _NewGiftRegisterItemState extends State<NewGiftRegisterItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        // leading: Image.asset('assets/svg/bars_2.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white, // Border color
                  width: 2.0, // Border width
                ),
                shape: BoxShape.circle, // To make it a circular border
              ),
              child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/svg/ellipse_2.png')),
            ),
          )
        ],
        title: Center(
          child: Text(
            'My Profile',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(right: 268.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Name',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ))
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 268.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Count',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ))
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Count',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 258.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Link to buy',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ))
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Link to buy',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 268.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Description',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ))
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 268.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Gift image',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                            ))
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Gift image',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                    ),
                    SizedBox(width: 10),

                    Text(
                      'Create another ',
                      style: TextStyle(fontSize: 17.0),
                    ), //Text
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Background color
                    onPrimary: Colors.white, // Text Color (Foreground color)
                  ),
                  child: const Text(
                    'Save Gift item',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Background color
                    onPrimary: Colors.black, // Text Color (Foreground color)
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}