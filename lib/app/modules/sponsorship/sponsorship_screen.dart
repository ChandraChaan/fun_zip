import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:get/get.dart';

import '../event_details/controllers/event_details_controller.dart';


class SponsorshipScreen extends GetView<EventDetailsController> {
  final bool boots;

  SponsorshipScreen({super.key, this.boots = false});

  @override
  Widget build(BuildContext context) {
    int usedListLength = boots == false
        ? controller.eventDetailsModel.sponsorCategories!.length
        : controller.eventDetailsModel.boothCategories!.length;
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 18,
          ),
          onPressed: (){
            Get.back();
          },
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            child: Image.asset('assets/svg/ellipse_1.png'),
          )
        ],
        title: Center(
            child: Text(
          boots == false? 'Sponsorship' : 'Available Booth Spaces',
          style: TextStyle(color: Colors.black, fontSize: 18),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int a = 0; a < usedListLength; a++) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(boots == false
                        ? controller.eventDetailsModel.sponsorCategories![a].name.toString()
                        : controller.eventDetailsModel.boothCategories![a]['name'].toString()),
                    Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25)),
                          child: Icon(Icons.remove, size: 14),
                        ),
                        SizedBox(width: 2),
                        Text('0'),
                        SizedBox(width: 2),
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25)),
                          child: Icon(Icons.add, size: 14),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 12,
                    ),
                    SizedBox(height: 25),
                    Text(
                      boots == false
                          ? controller.eventDetailsModel.sponsorCategories![a].actualPrice.toString()
                          : controller.eventDetailsModel.boothCategories![a]['actualPrice'].toString(),
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 7),
              ],
              Container(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    prefixIcon: Icon(Icons.person),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '+91 Phone Number',
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: SizedBox(
                        height: 10,
                        width: 10,
                        child: SizedBox(
                            height: 18,
                            child: Image.asset('assets/svg/monitor.png'))),
                    prefixStyle: TextStyle(fontSize: 10),
                    hintText: 'Business/Nature oof sponsorship',
                    hintStyle: TextStyle(fontSize: 10,color: Color(0XFF86839B)),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(fontSize: 10),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.language,
                      color: Colors.blue,size: 14,
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                child: TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    prefixIcon: Center(
                      child: Column(
                        children: [
                          Image.asset('assets/svg/upload.png'),
                          Text10('Drop logo/Image here to'),
                          Text10('Upload')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    prefixIcon: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Icon(Icons.comment,size: 14,), Text10('Comment')],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text10('Total price'),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            size: 15,
                          ),
                          Text(
                            '250.15',
                            style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 35,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color(0XFFC61236),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Text(
                        'Checkout',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
