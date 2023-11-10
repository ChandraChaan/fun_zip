import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TicketingAndRSVP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF5F4F9),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu_sharp, color: Colors.black),
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text(
            'Ticketing&RSVP',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0XFF000000)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.22,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0XFF5B46F4)),
                      color: Color(0XFFE3DFFF),
                    ),
                    child: Text(
                      'Open',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.22,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0XFF5B46F4)),
                      color: Color(0XFF5B46F4),
                    ),
                    child: Text(
                      'RSVP only',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.22,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0XFF5B46F4)),
                      color: Color(0XFFE3DFFF),
                    ),
                    child: Text(
                      'Ticketed',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.22,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0XFF5B46F4)),
                      color: Color(0XFFE3DFFF),
                    ),
                    child: Text(
                      'Fund Raising',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ('Event capacity'),
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0XFF5E5A80)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.79,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Color(0XFFF5F4F9),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Color(0XFFF5F4F9))),
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: '0',
                                hintStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0XFF86839B),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Maximum number of people that will be allowed to RSVP',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF5E5A80)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 20),
                        child: Text(
                          ('Messages'),
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0XFF5E5A80)),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 5, top: 10),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.79,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: Color(0XFFF5F4F9),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0XFFF5F4F9))),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Description',
                                hintStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFF5E5A80)),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => ChatDetails(),
              //       ),);
              // },
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0XFFDC143C),
                    border: Border.all(color: Color(0XFFDC143C)),
                  ),
                  child: Text(
                    'Save RSVP',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}