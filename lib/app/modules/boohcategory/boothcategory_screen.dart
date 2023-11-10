import 'package:flutter/material.dart';

class BoothCategory extends StatelessWidget {
  const BoothCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFFF5F4F9),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          leading: Icon(Icons.arrow_back,color: Colors.black,),
          title: Text(
            "New Booth Category",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Add booth types that people can purchase.",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF5E5A80)),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Category Name",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)),
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0XFFDC143C),
                    size: 10,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: "Category Name",
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Color(0XFF86839B)),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Total Available Count",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: "Total Available Count",
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Color(0XFF86839B)),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Currency",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: "Currency",
                      hintStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          color: Color(0XFF86839B)),
                      suffixIcon: const Icon(Icons.arrow_drop_down_sharp,
                          color: Color(0XFF86839B))),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Full Price",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: "Full Price",
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Color(0XFF86839B)),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Sale Price",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: "Sale Price",
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Color(0XFF86839B)),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Category Description",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.17,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: "Category Description",
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Color(0XFF86839B)),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Drop Pictures Here",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.88,
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0XFFFFFFFF)),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/cloud.png",
                        width: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Drop Image or Video Here",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: Color(0XFF5E5A80)
                          ),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFFDC143C)),
                child: const Text(
                  "Save Sponsor Category",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color: Colors.white),
                ),
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0XFFC9C6E1)),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFFF5F4F9)),
                child: const Text(
                  "Cancel",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    color: Colors.black,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}