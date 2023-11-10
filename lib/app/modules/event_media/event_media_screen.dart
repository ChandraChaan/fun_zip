import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventMediaScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFFF5F4F9),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Image.asset("assets/images/menu.png",width: 26,),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15,right: 150,left: 5),
              child: Text(
                "Event Media",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center  ,
              ),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.22,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Drop Image or Video Here",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: Color(0XFF5E5A80)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.90,
                          height: MediaQuery.of(context).size.height*0.15,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0XFFF5F4F9)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/cloud.png",width: 30,),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Drop Image here to Upload",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                      color: Color(0XFF86839B)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.24,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "External Images",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF312F46)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35,top: 8),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.44,
                              height: MediaQuery.of(context).size.height*0.05,
                              decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0XFFDC143C),),
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0XFFFFFFFF)
                              ),
                              child: const Text(
                                "Add External Image",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFFDC143C)
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11,top: 6),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.90,
                          height: MediaQuery.of(context).size.height*0.13,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0XFFF5F4F9)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      "Image Link",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0XFF312F46)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180,top: 10),
                                    child: Container(
                                      // width: MediaQuery.of(context).size.width*0.11,
                                      // height: MediaQuery.of(context).size.height*0.05,
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: const Color(0XFF85829B),),
                                          borderRadius: BorderRadius.circular(50),
                                          color: const Color(0XFFF5F4F9)
                                      ),
                                      child: const Icon(Icons.edit,color: Color(0XFF85829B),size: 10,),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 8),
                                    child: Container(
                                      // width: MediaQuery.of(context).size.width*0.11,
                                      // height: MediaQuery.of(context).size.height*0.05,
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: const Color(0XFF85829B),),
                                          borderRadius: BorderRadius.circular(50),
                                          color: const Color(0XFFF5F4F9)
                                      ),
                                      child: const Icon(Icons.delete,color: Color(0XFF85829B),size: 10,),
                                    ),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "https://funzippy.com/event/manage-event/4A6FejpTOsg#media-tab",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF5E5A80)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.24,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "External Videos",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF312F46)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35,top: 8),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.44,
                              height: MediaQuery.of(context).size.height*0.05,
                              decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0XFFDC143C),),
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0XFFFFFFFF)
                              ),
                              child: const Text(
                                "Add External Video",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFFDC143C)
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11,top: 6),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.90,
                          height: MediaQuery.of(context).size.height*0.13,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0XFFF5F4F9)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      "Video Link",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0XFF312F46)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180,top: 10),
                                    child: Container(
                                      // width: MediaQuery.of(context).size.width*0.11,
                                      // height: MediaQuery.of(context).size.height*0.05,
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: const Color(0XFF85829B),),
                                          borderRadius: BorderRadius.circular(50),
                                          color: const Color(0XFFF5F4F9)
                                      ),
                                      child: const Icon(Icons.edit,color: Color(0XFF85829B),size: 10,),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 8),
                                    child: Container(
                                      // width: MediaQuery.of(context).size.width*0.11,
                                      // height: MediaQuery.of(context).size.height*0.05,
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: const Color(0XFF85829B),),
                                          borderRadius: BorderRadius.circular(50),
                                          color: const Color(0XFFF5F4F9)
                                      ),
                                      child: const Icon(Icons.delete,color: Color(0XFF85829B),size: 10,),
                                    ),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "https://funzippy.com/event/manage-event/4A6FejpTOsg#media-tab",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF5E5A80)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}