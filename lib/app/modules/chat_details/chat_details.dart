import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F4F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 75),
          child: Text(
            'Chat Details',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0XFF000000)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Members 12',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0XFF312F46)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.90,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: const Color(0XFFC9C6C1))),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/img.png',
                              width: 26,
                              alignment: Alignment.center,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Scarlett Johansson',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0XFF312F46)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.90,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: const Color(0XFFC9C6C1))),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/img_1.png',
                              width: 26,
                              alignment: Alignment.center,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Chris Evans',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0XFF312F46)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.90,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: const Color(0XFFC9C6C1))),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/img_2.png',
                              width: 26,
                              alignment: Alignment.center,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Brie Larson',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0XFF312F46)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.90,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: const Color(0XFFC9C6C1))),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/img_3.png',
                              width: 26,
                              alignment: Alignment.center,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Elizabeth Olsen',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0XFF312F46)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '8 more',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5B46F4)),
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 2, color: Color(0XFFD3CFEB)),
              const Text(
                'Media 25',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xFF312F46)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'assets/images/img_4.png',
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'assets/images/img_5.png',
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'assets/images/img_6.png',
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'assets/images/img_7.png',
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'assets/images/img_8.png',
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0XFF85829B),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0XFF85829B)),
                        ),
                        child: const Text(
                          '+20'
                              'more',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}