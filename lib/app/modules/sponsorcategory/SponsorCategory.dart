import 'package:flutter/material.dart';


class SponsorCategory extends StatelessWidget{
  const SponsorCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFFF5F4F9),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          leading: const Icon(Icons.arrow_back,color: Colors.black,),
          backgroundColor: Colors.white,
          title: const Text(
            "New Sponsor Category",
            style: TextStyle(
                fontSize: 20,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                color: Colors.black
            ),
          ),
        ),
        body:  SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10,left: 10),
                child: Text(
                  "Add booth types that people can purchase.",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF5E5A80)
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Category Name",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)
                      ),
                    ),
                  ),
                  Icon(Icons.star,color: Color(0XFFDC143C),size: 10,)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.88,
                height: MediaQuery.of(context).size.height*0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 18),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                    hintText: "Category Name",
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Color(0XFF86839B)
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Max Sponsors",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)
                      ),
                    ),
                  ),
                  Icon(Icons.star,color: Color(0XFFDC143C),size: 10,)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.88,
                height: MediaQuery.of(context).size.height*0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 18),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                      hintText: "Max Sponsors",
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          color: Color(0XFF86839B)
                      ),
                      suffixIcon: Icon(Icons.arrow_drop_down_sharp, color: Color(0XFF86839B))
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Currency",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.88,
                height: MediaQuery.of(context).size.height*0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 18),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                      hintText: "Currency",
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          color: Color(0XFF86839B)
                      ),
                      suffixIcon: Icon(Icons.arrow_drop_down_sharp, color: Color(0XFF86839B))
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Full Price",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.88,
                height: MediaQuery.of(context).size.height*0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 18),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                    hintText: "Full Price",
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Color(0XFF86839B)
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Sale Price",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.88,
                height: MediaQuery.of(context).size.height*0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 18),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                    hintText: "Sale Price",
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Color(0XFF86839B)
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Category Description",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.88,
                height: MediaQuery.of(context).size.height*0.17,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 18),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                    hintText: "Category Description",
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Color(0XFF86839B)
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "Drop Pictures Here",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF5E5A80)
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width*0.88,
                  height: MediaQuery.of(context).size.height*0.20,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0XFFFFFFFF)),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/cloud.png",width: 30,),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: "Drop Image here to Upload",
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF86839B),
                            )
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.88,
                height: MediaQuery.of(context).size.height*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFFFFFFF)),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFDC143C)
                ),
                child: Text(
                  "Save Sponsor Category",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color: Colors.white
                  ),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.88,
                height: MediaQuery.of(context).size.height*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFFC9C6E1)),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFF5F4F9)
                ),
                child: Text(
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