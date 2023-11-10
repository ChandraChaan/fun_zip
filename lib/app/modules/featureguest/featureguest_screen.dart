import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureGuest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFFF5F4F9),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: const Text(
            "Featured Guests",
            style: TextStyle(
                fontSize: 20,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Text(
                      "Add Honorary guest to your event",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          color: Color(0XFF5E5A80)
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.40,
                    height: MediaQuery.of(context).size.height*0.05,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0XFFDC143C)),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Add Honorary Guest",
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: Color(0XFFDC143C)
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}