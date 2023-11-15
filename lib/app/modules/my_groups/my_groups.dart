import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fun_zippy/app/modules/my_tickets/my_tickets.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';

class MyGroups extends StatefulWidget {
  @override
  State<MyGroups> createState() => _MyGroupsState();
}

class _MyGroupsState extends State<MyGroups> {
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
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.deepPurple[100],
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text('User name'),
                accountEmail: Text('Username@email.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://c7.alamy.com/comp/TC2FPE/young-man-avatar-cartoon-character-profile-picture-TC2FPE.jpg'), // Replace with your image path
                ),
              ),
              ListTile(
                title: const Text('Menu Item 1'),
                onTap: () {
                  // Handle the action for Menu Item 1
                  // You can also use the innerContext here if needed
                },
              ),
              ListTile(
                title: const Text('Menu Item 2'),
                onTap: () {
                  // Handle the action for Menu Item 2
                  // You can also use the innerContext here if needed
                },
              ),
            ],
          ),
        ),
        body: Stack(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: SizeGet.getProportionHeight(70.0),
              // width: SizeGet.getProportionWidth(375.0),
              color: AppColors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    ),
                  ),
                  const Text(
                    'My Groups',
                    style: AppTextStyles.appBarTitleStyle,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: AppColors.lightPurple,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(
                            Icons.online_prediction_outlined,
                            color: AppColors.deepWhite,
                          )),
                      Builder(
                        builder: (innerContext) {
                          return GestureDetector(
                            onTap: () {
                              // Handle the action when the avatar is clicked
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const EmptyScreen()),
                              // );
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: const CircleAvatar(
                                radius: 15.0,
                                // Adjust the size of the avatar as needed
                                backgroundImage: NetworkImage(
                                    'https://c7.alamy.com/comp/TC2FPE/young-man-avatar-cartoon-character-profile-picture-TC2FPE.jpg'), // Replace with the URL of your network image
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeGet.getProportionHeight(50.0),
              width: SizeGet.getProportionWidth(375.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildCategory('Groups'),
                        buildCategory('Messages'),
                        buildCategory('My Events'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: CardList(),
            ),
          ]),
          Positioned(
            right: 20, // Adjust the left position as needed
            bottom: 20, // Adjust the bottom position as needed
            child: InkWell(
              onTap: () {},
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
          )
        ]));
  }

  Widget buildCategory(String category) {
    final isSelected = category == selectedCategory;
    return GestureDetector(
      onTap: () {
        selectCategory(category);
      },
      child: Column(
        children: [
          // OptionButton(
          //   text: category,
          //   isSelected: isSelected,
          // ),
          if (isSelected)
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 3,
                  width: SizeGet.getProportionWidth(375 / 4),
                  color:
                      isSelected ? AppColors.deepPurple : AppColors.lightGrey,
                ),
              ],
            ),
        ],
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
                  height: SizeGet.getProportionHeight(105),
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
                        style: AppTextStyles.headingTextStyle,
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
                            color: AppColors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            date,
                            // "Created on Aug 25, 2023",
                            style: AppTextStyles.lineTextStyle,
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
                            color: AppColors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            location,
                            // "Hyderabad",
                            style: AppTextStyles.lineTextStyle,
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
                        height: SizeGet.getProportionHeight(30),
                        width: SizeGet.getProportionWidth(25),
                        decoration: const BoxDecoration(
                            color: AppColors.deepWhite, shape: BoxShape.circle),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.ellipsisVertical,
                            size: 15,
                            color: AppColors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                      const Text(
                        "Local Group",
                        style: AppTextStyles.lineText12Style,
                        textAlign: TextAlign.center,
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
                          style: AppTextStyles.lineText14Style,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                const DottedLine(
                  direction: Axis.vertical,
                  // Set the direction to horizontal or vertical
                  lineLength: 60,
                  // The length of the line
                  lineThickness: 1.0,
                  // The thickness of the line
                  dashColor: AppColors.grey,
                  // The color of the line
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
                      Text(
                        "Age Group",
                        style: AppTextStyles.lineText12Style,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        ageGroup,
                        // "Adult",
                        style: AppTextStyles.lineText14Style,
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
                  // Set the direction to horizontal or vertical
                  lineLength: 60,
                  // The length of the line
                  lineThickness: 1.0,
                  // The thickness of the line
                  dashColor: AppColors.grey,
                  // The color of the line
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
                      Text(
                        "Close Group",
                        style: AppTextStyles.lineText12Style,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        closeGroup,
                        // "Pepsi Mates",
                        style: AppTextStyles.lineText14Style,
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
