import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoothScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFFC9C6E1),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Image.asset("assets/images/menu.png",width: 26,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,right: 180),
              child: Text(
                "Booths",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
              ),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.49,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Booth Categories",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: Color(0XFF312F46)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 75),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.height * 0.04,
                          decoration: BoxDecoration(
                              border: Border.all(color: const Color(0XFFDC143C)),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          child: const Text(
                            "Add Sponsor Category",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0XFFDC143C),
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 70, left: 10, top: 10),
                    child: Text(
                      "Add sponsorship categories in which people can purchase sponsorships for this event.",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          color: Color(0XFF5E5A80)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.16,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0XFFC9C6E1)),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Diamond",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      color: Color(0XFF312F46)),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 220, top: 10),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0XFF85829B)),
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color(0XFFF5F4F9)),
                                  child: const Icon(
                                    Icons.edit,
                                    size: 10,
                                    color: Color(0XFF85829B),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0XFF85829B)),
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color(0XFFF5F4F9)),
                                  child: const Icon(
                                    Icons.delete,
                                    size: 10,
                                    color: Color(0XFF85829B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Full Price",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF86839B)),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money,
                                    color: Color(0XFF5B46F4),
                                    size: 16,
                                  ),
                                  Text(
                                    "20.00",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w400,
                                        color: Color(0XFF5B46F4)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.16,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0XFFC9C6E1)),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Platinum",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      color: Color(0XFF312F46)),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 220, top: 10),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0XFF85829B)),
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color(0XFFF5F4F9)),
                                  child: const Icon(
                                    Icons.edit,
                                    size: 10,
                                    color: Color(0XFF85829B),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0XFF85829B)),
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color(0XFFF5F4F9)),
                                  child: const Icon(
                                    Icons.delete,
                                    size: 10,
                                    color: Color(0XFF85829B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Full Price",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF86839B)),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money,
                                    color: Color(0XFF5B46F4),
                                    size: 16,
                                  ),
                                  Text(
                                    "20.00",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w400,
                                        color: Color(0XFF5B46F4)),
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
          ),
        ),
      ),
    );
  }
}