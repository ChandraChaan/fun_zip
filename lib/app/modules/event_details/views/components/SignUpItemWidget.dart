import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fun_zippy/app/theme/text_theme.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../../../../widgets/rounded_border.dart';
import '../../../create_event/controllers/create_event_controller.dart';
import '../../../sign_up/controllers/sign_up_controller.dart';
import '../../controllers/event_details_controller.dart';

class SignUpItemWidget extends StatelessWidget {
  const SignUpItemWidget({
    super.key,
    this.controller,
  });

  final EventDetailsController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 560,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white)),
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
              for (int a = 0;
                  a < controller!.eventDetailsModel.timeSlots!.length;
                  a++)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
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
                                Text(
                                    controller!.formatDate(controller!
                                        .eventDetailsModel
                                        .timeSlots![a]['startDateTime']),
                                    style: TextStyle(fontSize: 14)),
                                SizedBox(height: 8),
                                Text(
                                  controller!.formatTimeRange(
                                      controller!.eventDetailsModel
                                          .timeSlots![a]['startDateTime'],
                                      controller!.eventDetailsModel
                                          .timeSlots![a]['endDateTime']),
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  controller!.eventDetailsModel.timeSlots![a]
                                          ['purpose'] ??
                                      ' ',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0XFF86839B)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 90),
                          Column(
                            children: [
                              SizedBox(
                                width: 59,
                                height: 20,
                                child: ElevatedButton(
                                  onPressed: controller!.eventDetailsModel
                                              .timeSlots![a]['status']
                                              .toString() ==
                                          'A'
                                      ? () {
                                          Get.dialog(BottomSignup(
                                              controller: controller!));
                                        }
                                      : null,
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(0),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      side:
                                          BorderSide(color: Color(0XFFC61236)),
                                    ),
                                  ),
                                  child: Container(
                                    height: 20,
                                    width: 59,
                                    child: Center(
                                      child: Text(
                                        'Sign Up',
                                        style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0XFFC61236),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '${int.parse(controller!.eventDetailsModel.timeSlots![a]['totalCount'].toString()) - int.parse(controller!.eventDetailsModel.timeSlots![a]['reservedCount'].toString())} Slots Left',
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
              SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class PotluckItems extends StatefulWidget {
//   @override
//   _PotluckItemsState createState() => _PotluckItemsState();
// }
//
// class _PotluckItemsState extends State<PotluckItems> {
//   List<bool> isSelected = [false, false, false];
//
//   void toggleSelection(int index) {
//     setState(() {
//       isSelected[index] = !isSelected[index];
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Potluck Items"),
//       ),
//       body: Container(
//         height: 510,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: Colors.white),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Potluck Items', style: TextStyle(fontWeight: FontWeight.bold)),
//             SizedBox(
//               height: 8,
//             ),
//             Text('Sign Up for an item Below', style: TextStyle(fontSize: 16)),
//             SizedBox(
//               height: 5,
//             ),
//             for (int a = 0; a < 3; a++)
//               Padding(
//                 padding: const EdgeInsets.only(top: 10),
//                 child: InkWell(
//                   onTap: () {
//                     toggleSelection(a);
//                   },
//                   child: Container(
//                     height: 132,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                           color: isSelected[a] ? Colors.blue : Color(0XFFC9C6E1)),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 16.0),
//                           child: Container(
//                             height: 98,
//                             width: 98,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 image: AssetImage('assets/svg/rectangle_223.png'),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 8),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text('Biryani'),
//                             Text('10 Left'),
//                           ],
//                         ),
//                         SizedBox(width: 145),
//                         Icon(
//                           isSelected[a] ? Icons.check_circle : Icons.circle_outlined,
//                           size: 20,
//                           color: isSelected[a] ? Colors.blue : Colors.black,
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class PotluckItems extends StatefulWidget {
  const PotluckItems({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  _PotluckItemsState createState() => _PotluckItemsState();
}

class _PotluckItemsState extends State<PotluckItems> {
  int selectedIndex = -1; // Initialize selectedIndex to -1 (no selection)

  void selectItem(int index) {
    setState(() {
      if (selectedIndex == index) {
        // If the selected item is tapped again, deselect it
        selectedIndex = -1;
      } else {
        selectedIndex = index; // Select the tapped item
      }
    });
  }

  void _showBottomSheet(BuildContext context) {
    Get.dialog(BottomSignup(
      controller: widget.controller,
    ));
    // showModalBottomSheet(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return Padding(
    //       padding: const EdgeInsets.all(16.0),
    //       child: Column(
    //         children: [
    //           Container(
    //             height: 420,
    //             width: 374,
    //             decoration: BoxDecoration(
    //                 color: Color(0XFFF5F4F9),
    //                 borderRadius: BorderRadius.circular(20)),
    //             child: Padding(
    //               padding: const EdgeInsets.only(top: 25.0, left: 8, right: 8),
    //               child: Column(
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.only(left: 310),
    //                     child: InkWell(
    //                       onTap: () {
    //                         Get.back();
    //                       },
    //                       child: Container(
    //                         height: 20,
    //                         width: 20,
    //                         child: Image.asset('assets/svg/group_54.png'),
    //                       ),
    //                     ),
    //                   ),
    //                   Text(
    //                     'Sign Up',
    //                     style:
    //                         TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
    //                   ),
    //                   SizedBox(height: 25),
    //                   Container(
    //                     height: 40,
    //                     width: 336,
    //                     decoration: BoxDecoration(
    //                         color: Colors.white,
    //                         borderRadius: BorderRadius.circular(20)),
    //                     child: TextField(
    //                       decoration: InputDecoration(
    //                         hintText: 'Name',
    //                         hintStyle: TextStyle(fontSize: 12),
    //                         prefixIcon: Icon(
    //                           Icons.person_2_outlined,
    //                           size: 14,
    //                           color: Color(0XFF5B46F4),
    //                         ),
    //                         border: InputBorder.none,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(height: 15),
    //                   Container(
    //                     height: 40,
    //                     width: 336,
    //                     decoration: BoxDecoration(
    //                         color: Colors.white,
    //                         borderRadius: BorderRadius.circular(20)),
    //                     child: TextField(
    //                       decoration: InputDecoration(
    //                         hintText: 'Email',
    //                         hintStyle: TextStyle(fontSize: 12),
    //                         prefixIcon: Icon(
    //                           Icons.mail_outlined,
    //                           size: 14,
    //                           color: Color(0XFF5B46F4),
    //                         ),
    //                         border: InputBorder.none,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(height: 15),
    //                   Container(
    //                     height: 40,
    //                     width: 336,
    //                     decoration: BoxDecoration(
    //                         color: Colors.white,
    //                         borderRadius: BorderRadius.circular(20)),
    //                     child: Row(
    //                       children: [
    //                         Container(
    //                           height: 40,
    //                           width: 50,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.only(
    //                                 bottomLeft: Radius.circular(20),
    //                                 topLeft: Radius.circular(20)),
    //                           ),
    //                           child: Row(
    //                             mainAxisAlignment: MainAxisAlignment.center,
    //                             children: [
    //                               Text(
    //                                 '+91',
    //                                 style: TextStyle(
    //                                     color: Color(0XFF5B46F4), fontSize: 12),
    //                               ),
    //                               Icon(
    //                                 Icons.expand_more,
    //                                 color: Color(0XFF86839B),
    //                                 size: 16,
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                         VerticalDivider(
    //                           thickness: 2,
    //                         ),
    //                         Row(
    //                           children: [
    //                             Container(
    //                               height: 40,
    //                               width: 269,
    //                               decoration: BoxDecoration(
    //                                   borderRadius: BorderRadius.only(
    //                                       topRight: Radius.circular(20),
    //                                       bottomRight: Radius.circular(20))),
    //                               child: TextField(
    //                                 decoration: InputDecoration(
    //                                   hintText: 'Phone Number',
    //                                   hintStyle: TextStyle(fontSize: 12),
    //                                   border: InputBorder.none,
    //                                 ),
    //                               ),
    //                             )
    //                           ],
    //                         )
    //                       ],
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 46,
    //                   ),
    //                   Container(
    //                     height: 40,
    //                     width: 336,
    //                     decoration: BoxDecoration(
    //                       color: Color(0XFFC61236),
    //                       borderRadius: BorderRadius.circular(20),
    //                     ),
    //                     child: TextButton(
    //                       onPressed: () {},
    //                       child: Text(
    //                         'Sign Up',
    //                         style: TextStyle(fontSize: 12, color: Colors.white),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    //
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 510,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 60,
          //   child: Image.asset('assets/svg/logo_512.png'),
          // ),
          Text('Potluck Items', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 8,
          ),
          Text('Sign Up for an item Below', style: TextStyle(fontSize: 16)),
          SizedBox(
            height: 5,
          ),
          for (int a = 0;
              a < widget.controller.eventDetailsModel.potluckItems!.length;
              a++)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  selectItem(a);
                  // Open the bottom sheet when an item is tapped
                  _showBottomSheet(context);
                },
                child: Container(
                  height: 132,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: a == selectedIndex
                            ? Colors.blue
                            : Color(0XFFC9C6E1)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Container(
                                height: 98,
                                width: 98,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(widget
                                        .controller
                                        .eventDetailsModel
                                        .potluckItems![a]['imageUrl']
                                        .toString()),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(widget.controller.eventDetailsModel
                                    .potluckItems![a]['itemName']
                                    .toString()),
                                Row(
                                  children: [
                                    Text((int.parse(widget
                                                .controller
                                                .eventDetailsModel
                                                .potluckItems![a]['count']
                                                .toString()) -
                                            int.parse(widget
                                                .controller
                                                .eventDetailsModel
                                                .potluckItems![a]['claimedCount']
                                                .toString()))
                                        .toString()),
                                    SizedBox(width: 5),
                                    Text(
                                      'left',
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0XFF86839B)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          a == selectedIndex
                              ? Icons.check_circle
                              : Icons.radio_button_unchecked,
                          size: 20,
                          color:
                              a == selectedIndex ? Colors.blue : Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class BottomSignup extends StatelessWidget {
  const BottomSignup({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: 420,
          width: 374,
          decoration: BoxDecoration(
              color: Color(0XFFF5F4F9),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 8, right: 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 310),
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/svg/group_54.png'),
                    ),
                  ),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 25),
                Container(
                  height: 40,
                  width: 336,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    controller: controller.nameController,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(fontSize: 12),
                      prefixIcon: Icon(
                        Icons.person_2_outlined,
                        size: 14,
                        color: Color(0XFF5B46F4),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 40,
                  width: 336,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    controller: controller.emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 12),
                      prefixIcon: Icon(
                        Icons.mail_outlined,
                        size: 14,
                        color: Color(0XFF5B46F4),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 40,
                  width: 336,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '+91',
                              style: TextStyle(
                                  color: Color(0XFF5B46F4), fontSize: 12),
                            ),
                            Icon(
                              Icons.expand_more,
                              color: Color(0XFF86839B),
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 269,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: TextField(
                              controller: controller.phoneController,
                              decoration: InputDecoration(
                                hintText: 'Phone Number',
                                hintStyle: TextStyle(fontSize: 12),
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 46,
                ),
                Container(
                  height: 40,
                  width: 336,
                  decoration: BoxDecoration(
                    color: Color(0XFFC61236),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {
                      controller.signUp();
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 12, color: Colors.white),
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
}
