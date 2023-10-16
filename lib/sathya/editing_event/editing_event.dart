import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/modules/home/controllers/home_controller.dart';

class EditingEvent extends GetView<HomeController> {
//   const EditingEvent({super.key});
//
//   @override
//   State<EditingEvent> createState() => _EditingEventState();
// }
//
// class _EditingEventState extends State<EditingEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
                child: Icon(
                  Icons.qr_code,
                  color: Colors.deepPurple,
                ),
              ),
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
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1080,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Basic Details',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Text(
                            'Event Name',
                            style: TextStyle(
                                fontSize: 11, color: Colors.deepPurple),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'The Great Gastby Party: Hyderabad',
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Start Date',
                            style: TextStyle(
                                fontSize: 11, color: Colors.deepPurple),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.calendar_today_outlined,
                              size: 18,
                              color: Colors.deepPurpleAccent,
                            ),
                            hintText: 'December 9, 2023',
                            hintStyle: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Start Time',
                            style: TextStyle(
                                fontSize: 11, color: Colors.deepPurple),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.schedule,
                              size: 18,
                              color: Colors.deepPurpleAccent,
                            ),
                            hintText: '06:00 PM',
                            hintStyle: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'End Date',
                            style: TextStyle(
                                fontSize: 11, color: Colors.deepPurple),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.calendar_today_outlined,
                              size: 18,
                              color: Colors.deepPurpleAccent,
                            ),
                            hintText: 'December 12,2023',
                            hintStyle: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'End Date',
                            style: TextStyle(
                                fontSize: 11, color: Colors.deepPurple),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.schedule,
                              size: 18,
                              color: Colors.deepPurpleAccent,
                            ),
                            hintText: '11:00 PM',
                            hintStyle: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event Locality',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                          Text('*',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 12)),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(color: Colors.deepPurpleAccent),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text('In Person'),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(color: Colors.deepPurpleAccent),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(child: Text('Online')),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(color: Colors.deepPurpleAccent),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(child: Text('Mixed')),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event location',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Taj Banjara,Hyderabad',
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Rd Number1',
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'City',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Hyderabad',
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'State',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'TS',
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Country',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                          SizedBox(width: 153),
                          Text(
                            'Zip/Postal Code',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(color: Colors.deepPurpleAccent),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(child: Text('INDIA')),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(color: Colors.deepPurpleAccent),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(child: Text('500034')),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event Timezone',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Choose',
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.black12,
                            suffixIcon: Icon(Icons.expand_more),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Livestream Provide',
                        style: TextStyle(
                            fontSize: 12, color: Colors.deepPurpleAccent),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            size: 14,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'FunZippy StreamingLivestream features by Funzippy!',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            size: 14,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Custom linkYou own livestream link\n(Zoom, Skype, Twitch, etc.)',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event Sub Category',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Your Livestream link',
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 700,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12),
                      Text(
                        'Category',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event Category',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Choose',
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.black12,
                            suffixIcon: Icon(Icons.expand_more),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Event Sub Category',
                            style: TextStyle(
                                fontSize: 12, color: Colors.deepPurpleAccent),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Choose',
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.black12,
                            suffixIcon: Icon(Icons.expand_more),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Thumbnail Images',
                        style: TextStyle(
                            fontSize: 12, color: Colors.deepPurpleAccent),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 107,
                        width: 115,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/svg/rectangle_111.png'))),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Thumbnail Images',
                        style: TextStyle(
                            fontSize: 12, color: Colors.deepPurpleAccent),
                      ),
                      SizedBox(height: 20),
                      Container(
                          height: 150,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'RSVP means Please reply ( we are asking invitees/guests to reply if they are coming for event or attending the event , if so how many- so that you can plan your logistics around the count.) In Some cases like sri mantham or baby shower, please add gift registry to that guests can buy the items that are ',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          )),
                      SizedBox(height: 8),
                      Text(
                        'Event Tags',
                        style: TextStyle(
                            fontSize: 12, color: Colors.deepPurpleAccent),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Event Taggs',
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 43,
                            child: Center(
                                child: Text(
                              'Party',
                              style: TextStyle(fontSize: 8),
                            )),
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 18,
                            width: 43,
                            child: Center(
                                child: Text(
                              'Event',
                              style: TextStyle(fontSize: 8),
                            )),
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 18,
                            width: 68,
                            child: Center(
                                child: Text(
                              'Hyderabad',
                              style: TextStyle(fontSize: 8),
                            )),
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 46,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red),
                ),
                child: Center(
                  child: Text(
                    'Save Event',
                    style: TextStyle(fontSize: 16, color: Colors.red,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 46,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red),
                ),
                child: Center(
                  child: Text(
                    'preview Event',
                    style: TextStyle(fontSize: 16, color: Colors.red,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 46,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red),
                ),
                child: Center(
                  child: Text(
                    'Publish Event',
                    style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 46,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red),
                ),
                child: Center(
                  child: Text(
                    'Cancel Event',
                    style: TextStyle(fontSize: 16, color: Colors.red,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
