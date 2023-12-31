import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fun_zippy/app/modules/common_data/common_text.dart';
import 'package:fun_zippy/app/modules/my_events_screen/my_events.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class MyGroupsScreen extends StatefulWidget {

  @override
  State<MyGroupsScreen> createState() => MyGroupsScreentateScreen();
}

class MyGroupsScreentateScreen extends State<MyGroupsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String selectedCategory = 'Groups';

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeGet().init(context);
    return DefaultTabController(
      length: 3, // Number of tabs
      child: CommonScafold(
        title: 'My Groups',
        titleChild: Text('My Groups',
            style: TextStyle(color: Colors.black, fontSize: 20)),
        remoNavChild: true,
        boardCast: true,
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: backgroundColor,
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              color: Color(0XFFEFEDFF),
              child: TabBar(
                indicatorColor: Color(0XFF5B46F4),
                labelColor: Color(0XFF5B46F4),
                unselectedLabelColor: Colors.grey[600],
                tabs: <Widget>[
                  Tab(
                    child: Text('Groups'),
                  ),
                  Tab(
                    child: Text('Messages'),
                  ),
                  Tab(
                    child: Text('My Events'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  // Content for Tab 1
                  CardList(),
                  // Content for Tab 2
                  Center(
                    child: Text('Messages'),
                  ),
                  // Content for Tab 3
                  MyEvents()
                ],
              ),
            ),
          ]),
          floatingActionButton: InkWell(
            onTap: () {
              Get.toNamed(Routes.CreateGroup);
            },
            child: const CircleAvatar(
              radius: 22,
              backgroundColor: AppColors.lightPurple,
              child: Icon(
                Icons.add,
                color: AppColors.deepWhite,
                size: 35,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  final List<Map> groupDetails = [
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/d/df/Family_Portrait.jpg",
      "date": "Created on Aug 25, 2023",
      "location": "Hyderabad",
      "heading": "Secret Looser",
      "localGroup": "Buddies for Life",
      "ageGroup": "Adult",
      "closeGroup": "Pepsi Mates"
    },
    {
      "image":
          "https://as2.ftcdn.net/v2/jpg/00/82/95/17/1000_F_82951723_HpxHjpLhFsGvM35F8Hq44NwbtzJc3GsB.jpg",
      "date": "Created on Aug 25, 2023",
      "location": "Hyderabad",
      "heading": "The Back Benchers",
      "localGroup": "Buddies for Life",
      "ageGroup": "Adult",
      "closeGroup": "Pepsi Mates"
    },
    {
      "image":
          "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
      "date": "Created on Aug 25, 2023",
      "location": "Hyderabad",
      "heading": "Enter At Your Risk",
      "localGroup": "Buddies for Life",
      "ageGroup": "Adult",
      "closeGroup": "Pepsi Mates"
    },
    {
      "image":
          "https://imgv3.fotor.com/images/slider-image/A-clear-close-up-photo-of-a-woman.jpg",
      "date": "Created on Aug 25, 2023",
      "location": "Hyderabad",
      "heading": "Secret Looser",
      "localGroup": "Buddies for Life",
      "ageGroup": "Adult",
      "closeGroup": "Pepsi Mates"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groupDetails.length,
      itemBuilder: (context, index) {
        return singleCard(
          imageUrl: groupDetails[index]["image"],
          location: groupDetails[index]["location"],
          date: groupDetails[index]["date"],
          heading: groupDetails[index]["heading"],
          localGroup: groupDetails[index]["localGroup"],
          ageGroup: groupDetails[index]["ageGroup"],
          closeGroup: groupDetails[index]["closeGroup"],
        );
      },
    );
  }
}

class singleCard extends StatelessWidget {
  final String imageUrl;
  final String location;
  final String date;
  final String heading;
  final String localGroup;
  final String ageGroup;
  final String closeGroup;

  singleCard(
      {required this.imageUrl,
      required this.location,
      required this.date,
      required this.heading,
      required this.localGroup,
      required this.ageGroup,
      required this.closeGroup});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: SizeGet.getProportionHeight(90),
                  width: SizeGet.getProportionWidth(90),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(imageUrl
                              // 'https://upload.wikimedia.org/wikipedia/commons/d/df/Family_Portrait.jpg',
                              ),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  // height: SizeGet.getProportionHeight(70),
                  width: SizeGet.getProportionWidth(200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        heading,
                        // 'Secret Looser',
                        style: TextStyle(fontSize: 14),
                        maxLines: 3, // Limit to 3 lines
                        overflow: TextOverflow
                            .ellipsis, // Show ellipsis (...) if text is truncated
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.date_range,
                            size: 16,
                            color: Color(0XFF5E5A80),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text10(
                            date,
                            // "Created on Aug 25, 2023",
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 16,
                            color: Color(0XFF5E5A80),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text10(
                            location,
                            // "Hyderabad",
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      height: SizeGet.getProportionHeight(30),
                      width: SizeGet.getProportionWidth(15),
                      decoration: const BoxDecoration(
                        color: AppColors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                            height: SizeGet.getProportionHeight(32),
                            width: SizeGet.getProportionWidth(27),
                            decoration: const BoxDecoration(
                                color: AppColors.deepWhite,
                                shape: BoxShape.circle),
                            child: ThreeDotPopupMenu()),
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              // Horizontal line
              color: AppColors.lightGrey,
              // Change the color to your preference
              thickness: 1, // Change the thickness as needed
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: SizeGet.getProportionHeight(80),
                  width: SizeGet.getProportionWidth(105),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text10(
                        "Local Group",
                        //textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: SizeGet.getProportionHeight(50),
                        width: SizeGet.getProportionWidth(100),
                        child: Text(
                          localGroup,
                          // "Buddies for Life",
                          style: TextStyle(color: Colors.black),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                const DottedLine(
                  direction: Axis.vertical,
                  lineLength: 60,
                  lineThickness: 1.0,
                  dashColor: AppColors.grey,
                  dashGapLength: 0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: SizeGet.getProportionHeight(80),
                  width: SizeGet.getProportionWidth(80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text10(
                        "Age Group",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text12Black(
                        ageGroup,
                        // "Adult",
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                const DottedLine(
                  direction: Axis.vertical,
                  lineLength: 60,
                  lineThickness: 1.0,
                  dashColor: AppColors.grey,
                  dashGapLength: 0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: SizeGet.getProportionHeight(80),
                  // width: SizeGet.getProportionWidth(80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text10("Close Group"),
                      SizedBox(
                        height: 10,
                      ),
                      Text12Black(
                        closeGroup,
                        // "Pepsi Mates",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ThreeDotPopupMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: FaIcon(
        FontAwesomeIcons.ellipsisVertical,
        size: 15,
        color: AppColors.grey,
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'view',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.visibility_outlined,
                size: 20,
                color: Color(0XFF5B46F4),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'View',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'edit',
          child: InkWell(
            onTap: () {
              Get.toNamed(Routes.CreateGroup);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.mode_edit_outlined,
                  color: Colors.orange,
                  size: 20,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Edit',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem<String>(
          value: 'delete',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.delete_outline_outlined,
                size: 20,
                color: Colors.pink.shade600,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Delete',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ],
      onSelected: (String value) {
        // Handle item selection
        switch (value) {
          case 'view':
            print("view");
            // Do something for 'View'
            break;
          case 'edit':
            print("edit");
            // Do something for 'Edit'
            break;
          case 'delete':
            print("delete");
            // Do something for 'Delete'
            break;
        }
      },
    );
  }
}
