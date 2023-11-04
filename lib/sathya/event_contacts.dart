import 'package:flutter/material.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app/widgets/commonScafold.dart';
import 'common_data/common_text.dart';

class EventContactsScreen extends StatelessWidget {
  const EventContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 20,
                  width: 67,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0XFFC61236))),
                    child: Center(
                      child: Text(
                        'Add Contact',
                        style: TextStyle(fontSize: 8, color: Color(0XFFC61236)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            for(int a = 0; a < 4; a++)
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: SizedBox(
                height: 90,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0XFFC9C6E1))),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'assets/svg/ellipse_1.png',
                              width: 130,
                              height: 130,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Scarlett Johansson',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(width: 70),
                                Row(
                                  children: [
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(0XFF5F4F9),
                                          border:
                                          Border.all(color: Color(0XFF85829B))),
                                      child: Image.asset('assets/svg/edit.png'),
                                    ),
                                    SizedBox(width: 7),
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color(0XFF5F4F9),
                                          border:
                                          Border.all(color: Color(0XFF85829B))),
                                      child: Image.asset('assets/svg/delete.png'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/svg/email_grey.png'),
                                SizedBox(width: 5),
                                Text10('johansson@gmail.com')
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/svg/phone_grey.png'),
                                SizedBox(width: 5),
                                Text10('+91 9876543210')
                              ],
                            )
                          ],
                        )
                      ],
                    ),
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
