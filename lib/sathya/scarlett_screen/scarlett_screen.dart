import 'package:flutter/material.dart';
import 'package:fun_zippy/app/routes/app_pages.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

class ScarlettScreen extends StatelessWidget {
  const ScarlettScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text(
      //         'Event Management',
      //         style: TextStyle(color: Colors.black),
      //       ),
      //       Row(
      //         children: [
      //           InkWell(
      //             onTap: () {
      //               Get.toNamed(Routes.MyEvents);
      //             },
      //             child: Container(
      //               height: 22,
      //               width: 55,
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(20),
      //                   border: Border.all(color: Color(0XFFC61236))),
      //               child: Center(
      //                 child: Text(
      //                   'Go to Events',
      //                   style: TextStyle(fontSize: 7, color: Color(0XFFC61236)),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           5.width,
      //           InkWell(
      //             onTap: () {
      //               Get.back();
      //             },
      //             child: Icon(
      //               Icons.cancel_outlined,
      //               color: Color(0XFF5E5A80),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.red,
                width: double.infinity,
                child: ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: 10,
                  contentPadding: const EdgeInsets.all(0),
                  leading: InkWell(
                    child: Icon(
                      Icons.location_on,
                      size: 38,
                      color: Colors.deepOrange,
                    ),
                    onTap: () {
                    },
                  ),
                  title: SizedBox(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Madhapur',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 7),
                        IconButton(
                            onPressed: () {
                            },
                            icon: Icon(Icons.expand_more))
                      ],
                    ),
                  ),
                  subtitle: Text(
                    'Rahimpura, Dattatreya Nagar, Hyderabad',
                    style: TextStyle(fontSize: 14),
                  ),
                  // trailing: SizedBox(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       InkWell(
                  //         child: Icon(Icons.notifications),
                  //         onTap: () {},
                  //       ),
                  //       InkWell(
                  //         child: CircleAvatar(
                  //           backgroundImage:
                  //           AssetImage('assets/images/profile_picture.png'),
                  //           radius: 23,
                  //         ),
                  //         onTap: () {
                  //
                  //         },
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
              ),

              buildRow('Home', 'assets/svg/h1.png'),
              buildRow('Create an Event', 'assets/svg/h2.png'),
              buildRow('My Events', 'assets/svg/h3.png'),
              buildRow('My Tickets', 'assets/svg/h4.png'),
              buildRow('My Group', 'assets/svg/h5.png'),
              buildRow('My Profile', 'assets/svg/h6.png'),
              buildRow('Blog', 'assets/svg/h7.png'),
              buildRow('Contact Us', 'assets/svg/h8.png'),
              buildRow('About Us', 'assets/svg/h9.png'),
              buildRow('Privacy Policy', 'assets/svg/h10.png'),
              buildRow('Log Out', 'assets/svg/exit.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(String title, String imagePath) {
    return InkWell(
      onTap: () {
        // Add your onTap functionality here
      },
      child: Row(
        children: [
          Container(
            height: 15,
            width: 15,
            child: Image.asset(imagePath),
          ),
          SizedBox(width: 8), // Adjust the space between image and text
          Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
