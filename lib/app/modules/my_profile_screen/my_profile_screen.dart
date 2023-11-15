import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      title:'My Profile',
      child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 85,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Image.asset('assets/svg/ellipse_2.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Scarlett Johansson',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 2),
                              Row(
                                children: [
                                  Image.asset('assets/svg/center.png'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'johansson@gmail.com',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              SizedBox(height: 2),
                              Row(
                                children: [
                                  Image.asset('assets/svg/vector_2.png'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '+91 9876543210',
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  height: 660,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Edit Your Personal Settings',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'First Name',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Scarlett',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Last Name',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Johansson',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Email Address',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'johansson@gmail.com',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Phone Number',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              // Country code
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '+91',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors
                                        .grey, // You can adjust the color as needed
                                  ),
                                ),
                              ),
                              // Vertical divider
                              VerticalDivider(
                                width: 1,
                                color: Colors
                                    .grey, // You can adjust the color as needed
                              ),
                              // Phone number text field
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '9876543210',
                                      hintStyle: TextStyle(fontSize: 11),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Website',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'www.jjohansson.com',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Text(
                          'Address1',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '6160 Warren Pkwy',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'City',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Frisco',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'State/Province',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'TX',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Country',
                              style: TextStyle(fontSize: 11),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Text(
                              'Zip/Postal Code',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Color(0XFFF5F4F9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'US',
                                      hintStyle: TextStyle(fontSize: 11),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Expanded(
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Color(0XFFF5F4F9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '75034',
                                      hintStyle: TextStyle(fontSize: 11),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Social Profiles',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'https://www.facebook.com/Johansson',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Last Name',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'https://www.facebook.com/Johansson',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Email Address',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'https://www.facebook.com/Johansson',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Instagram',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'https://www.facebook.com/Johansson',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Google+',
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F4F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'https://www.facebook.com/Johansson',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                10.height,
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0XFFC61236),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Text(
                      'Save',
                      style: (TextStyle(color: Colors.white, fontSize: 14)),
                    )),
                    //                            fillColor: Color(0XFFC61236),
                  ),
                ),
                10.height,
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0XFFC61236))),
                    child: Center(
                        child: Text(
                      'My Organization',
                      style: (TextStyle(color: Color(0XFFC61236), fontSize: 14)),
                    )),
                    //                            fillColor: Color(0XFFC61236),
                  ),
                ),
                10.height,
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0XFFC61236))),
                    child: Center(
                        child: Text(
                      'My Business',
                      style: (TextStyle(color: Color(0XFFC61236), fontSize: 14)),
                    )),
                    //                            fillColor: Color(0XFFC61236),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
