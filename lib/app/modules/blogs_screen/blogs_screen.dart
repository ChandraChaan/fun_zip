import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BlogsScreen extends StatefulWidget {
  final bool isSfald;

  const BlogsScreen({super.key, this.isSfald = false});

  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends State<BlogsScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      title: 'Blogs',
      titleChild:
          Text('Blogs', style: TextStyle(color: Colors.black, fontSize: 20)),
      remoNavChild: true,
      boardCast: false,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (int a = 1; a < 4; a++)
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 310,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0XFFC9C6E1))),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/svg/blogs.png'),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 27,
                                width: 94,
                                decoration: BoxDecoration(
                                    color: Color(0XFFF5F4F9),
                                    borderRadius: BorderRadius.circular(25),
                                    border:
                                        Border.all(color: Color(0XFF5B46F4))),
                                child: Center(
                                  child: Text(
                                    "Creative Tim",
                                    style: TextStyle(
                                        color: Color(0XFF5B46F4), fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Announcing Jobs by Creative Tim - The Platform for web professionals",
                              style: TextStyle(fontSize: 14),
                            ),
                            Divider(thickness: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Image.asset(
                                          'assets/svg/calendar_2.png'),
                                      height: 12,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Septembar 2, 2022',
                                      style: TextStyle(
                                          color: Color(0XFF5E5A80),
                                          fontSize: 11),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      child: Container(
                                        height: 20,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            border: Border.all(
                                                color: Color(0XFFC61236))),
                                        child: Center(
                                          child: Text(
                                            "Read More",
                                            style: TextStyle(
                                                color: Color(0XFFC61236),
                                                fontSize: 10),
                                          ),
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ForBuilderEvent({required Widget chil}) {
    return widget.isSfald
        ? CommonScafold(
            title: 'My Tickets',
            selectedIndex: 3,
            navChild: true,
            child: chil,
          )
        : chil;
  }
}
