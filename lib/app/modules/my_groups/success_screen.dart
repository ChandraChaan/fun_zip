import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class GroupSuccessScreen extends StatelessWidget {
  const GroupSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 580,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/svg/success.png'),
                  SizedBox(height: 120),
                  Text(
                    'Successful',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Text12('You have created a group'),
                      Text12('successfully'),
                    ],
                  ),
                  SizedBox(height: 120),
                  Center(
                    child: InkWell(
                      onTap: (){
                        Get.toNamed(Routes.MyGroupsScreen);
                      },
                      child: Container(
                        height: 35,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color(0XFFC61236),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Done!',
                            style: (TextStyle(color: Colors.white, fontSize: 14)),
                          ),
                        ),
                        //fillColor: Color(0XFFC61236),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
