import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';

import '../../../../widgets/rounded_border.dart';

class SignUpItemWidget extends StatelessWidget {
  const SignUpItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: roundedBorder(radius: 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Sign up Items', style: titleBoldText),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Sign up to a slot below',
                      style: normalText.copyWith()),
                ),
                for (int a = 1; a <= 5; a++)
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Flexible(
                      child: Container(
                        height: 84,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0XFFC9C6E1))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color(0XFFE1FFCF),
                                    borderRadius: BorderRadius.circular(2)),
                                child: Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('17th August',
                                        style: TextStyle(fontSize: 14)),
                                    SizedBox(height: 8),
                                    Text(
                                      '09:00 AM - 10:00 PM',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Arrange Furniture',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0XFF86839B)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 108),
                              Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 59,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Color(0XFFC61236))),
                                    child: Center(
                                      child: Text(
                                        'Sing Up',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Color(0XFFC61236),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '3 Slots Left',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0XFFC61236),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 510,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Potluck Items', style: titleBoldText),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Sign Up for an item Below',
                          style: normalText.copyWith()),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 132,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0XFFC9C6E1))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Container(
                                height: 98,
                                width: 98,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/svg/rectangle_223.png'))),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Biryani'),
                                Text('10 Left')
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
