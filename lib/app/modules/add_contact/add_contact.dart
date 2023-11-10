import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFF5F4F9),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Padding(
            padding: const EdgeInsets.all(70),
            child: Text(
              'Add Contact',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Text('First Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0XFF5E5A80),
                        )),
                    Text(
                      '*',
                      style: TextStyle(fontSize: 14, color: Color(0XFFDC143C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 0.88,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.90,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: 'First Name',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF86839B))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Text('Last Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0XFF5E5A80),
                        )),
                    Text(
                      '*',
                      style: TextStyle(fontSize: 14, color: Color(0XFFDC143C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 0.88,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.90,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: 'Last Name',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF86839B))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Text('Email',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0XFF5E5A80),
                        )),
                    Text(
                      '*',
                      style: TextStyle(fontSize: 14, color: Color(0XFFDC143C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 0.88,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.90,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF86839B))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Text('Phone Number',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0XFF5E5A80),
                        )),
                    Text(
                      '*',
                      style: TextStyle(fontSize: 14, color: Color(0XFFDC143C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 0.88,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.90,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        '+91',
                        style:
                        TextStyle(fontSize: 12, color: Color(0XFF5B46F4)),
                      ),
                      Icon(Icons.arrow_drop_down),
                      // VerticalDivider(
                      //   thickness: 0.7,color: Color(0XFF5E5A80),),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 18),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFF86839B))),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Text('Website',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0XFF5E5A80),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 0.88,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.90,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: 'Enter Url',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF86839B))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Text('Drop Pictures Here',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0XFF5E5A80),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 0.88,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.90,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 120, top: 50),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/img_10.png',
                          height: 36,
                          width: 36,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Drop image here to upload',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF86839B)),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.90,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0XFFDC143C),
                  border: Border.all(color: Color(0XFFDC143C)),
                ),
                child: Text(
                  'Save Contact',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.90,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0XFFF5F4F9),
                  border: Border.all(color: Color(0xFFC9C6E1)),
                ),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFFC9C6E1)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 