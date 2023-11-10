import 'package:flutter/material.dart';

class NewHonoryGuest extends StatelessWidget {
  const NewHonoryGuest({super.key});

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
            "New Honorary Guest",
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "First Name",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF5E5A80)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Icon(
                        Icons.star,
                        color: Color(0XFFDC143C),
                        size: 10,
                      ),
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
                      hintText: "First Name",
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
                        "Last Name",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF5E5A80)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.star,
                        color: Color(0XFFDC143C),
                        size: 10,
                      ),
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
                      hintText: "Last Name",
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
                        "Phone Number",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF5E5A80)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.star,
                        color: Color(0XFFDC143C),
                        size: 10,
                      ),
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
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "+91",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: Color(0XFF5B46F4),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.arrow_drop_down_sharp,color: Color(0XFF86839B),size: 16,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.04,
                          width: 2,
                          color: Color(0XFFBBB8CC),
                        ),

                      ),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF86839B)
                        ),
                      )
                    ],
                  ),
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Email",
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
                      hintText: "Email",
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
                        "Facebook",
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
                      hintText: "Facebook",
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
                        "Twitter",
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
                      hintText: "Twitter",
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
                        "Instagram",
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
                      hintText: "Instagram",
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
                        "Description",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF5E5A80)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.star,
                        color: Color(0XFFDC143C),
                        size: 10,
                      ),
                    )
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
                      hintText: "Description",
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
                  alignment: Alignment.center,
                  child: const Text(
                    "Save Honory Guest",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                        color: Colors.white),
                  ),
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
                  alignment: Alignment.center,
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color: Colors.black,
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}