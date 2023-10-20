import 'package:flutter/material.dart';

class MyTicketsScreen extends StatefulWidget {
  const MyTicketsScreen({super.key});

  @override
  State<MyTicketsScreen> createState() => _MyTicketsScreenState();
}

class _MyTicketsScreenState extends State<MyTicketsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset('assets/svg/vector_22.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF5B46F4),
                    border: Border.all(
                      color: Color(0XFF5B46F4), // Border color
                      width: 2.0, // Border width
                    ),
                    shape: BoxShape.circle, // To make it a circular border
                  ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.sensors,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.deepPurple, // Border color
                      width: 2.0, // Border width
                    ),
                    shape: BoxShape.circle, // To make it a circular border
                  ),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/svg/ellipse_2.png')),
                ),
              ],
            ),
          )
        ],
        title: Center(
            child: Text(
          'Editing Event',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: 212,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFFC9C6E1)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          child: Image.asset('assets/svg/rectangle_19.png'),
                        ),
                        Text(
                          'Secret Looser',
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(Icons.calendar_today,size: 18,),
                            Text(
                              'Created on Aug 25,2023',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text(
                              'Secret Looser',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
