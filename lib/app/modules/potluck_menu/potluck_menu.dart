import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';

class potluck_menu extends StatefulWidget {
  @override
  State<potluck_menu> createState() => _potluck_menuState();
}

class _potluck_menuState extends State<potluck_menu> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedOption = -1;

  void selectOption(int index) {
    setState(() {
      selectedOption = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeGet().init(context);
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppColors.customGrey,
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
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: SizeGet.getProportionHeight(70.0),
            // width: SizeGet.getProportionWidth(375.0),
            color: AppColors.deepWhite,
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
                  'Potluck Menu',
                  style: AppTextStyles.appBarTitleStyle,
                ),
                const SizedBox(
                  width: 1,
                ),
                const SizedBox(
                  width: 1,
                )
              ],
            ),
          ),
          SizedBox(
              height: SizeGet.getProportionHeight(50.0),
              width: SizeGet.getProportionWidth(375.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.blue, side: const BorderSide(color: AppColors.red, width: 1),
                        // Border color and width
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        // Button padding
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20), // Border radius
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Add Potluck Item",
                        style: TextStyle(color: AppColors.red, fontSize: 10),
                      )),
                  const SizedBox(
                    width: 5,
                  )
                ],
              )),
          Expanded(
            child: CardList(),
          ),
        ]));
  }
}

class CardList extends StatelessWidget {
  final List<Map> groupDetails = [
    {
      "heading": "Biryani",
      "itemType": "Main Dish",
      "traysNeed": "20",
      "claimed": "2"
    },
    {
      "heading": "Veg-Biryani",
      "itemType": "Main Dish",
      "traysNeed": "20",
      "claimed": "2"
    },
    {
      "heading": "Grilled Chicken",
      "itemType": "Main Dish",
      "traysNeed": "20",
      "claimed": "2"
    },
    {
      "heading": "Mutton Biryani + Tandoori Chicken Half",
      "itemType": "Main Dish",
      "traysNeed": "20",
      "claimed": "2"
    },
    {
      "heading": "Steam Rice",
      "itemType": "Main Dish",
      "traysNeed": "20",
      "claimed": "2"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groupDetails.length,
      itemBuilder: (context, index) {
        return singleCard(
            itemType: groupDetails[index]["itemType"],
            traysNeed: groupDetails[index]["traysNeed"],
            claimed: groupDetails[index]["claimed"],
            heading: groupDetails[index]["heading"]);
      },
    );
  }
}

class singleCard extends StatelessWidget {
  final String itemType;
  final String traysNeed;
  final String claimed;
  final String heading;

  singleCard(
      {required this.itemType,
      required this.traysNeed,
      required this.claimed,
      required this.heading});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  // height: SizeGet.getProportionHeight(70),
                  width: SizeGet.getProportionWidth(200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        heading,
                        // 'Secret Looser',
                        style: AppTextStyles.lineBoldTextStyle,
                        maxLines: 3, // Limit to 3 lines
                        overflow: TextOverflow
                            .ellipsis, // Show ellipsis (...) if text is truncated
                      ),
                    ],
                  ),
                ),
                Container(
                  height: SizeGet.getProportionHeight(30),
                  width: SizeGet.getProportionWidth(30),
                  decoration: const BoxDecoration(
                    color: AppColors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      height: SizeGet.getProportionHeight(27),
                      width: SizeGet.getProportionWidth(30),
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
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const DottedLine(
              direction: Axis.horizontal,
              // Set the direction to horizontal or vertical
              lineLength: double.infinity,
              // The length of the line
              lineThickness: 1.0,
              // The thickness of the line
              dashColor: AppColors.grey,
              // The color of the line
              dashGapLength: 6,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Item type",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      itemType,
                      // "Diamond",
                      style: AppTextStyles.lineBoldTextStyle,
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
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
                  dashGapLength: 6,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Trays Needed",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      traysNeed,
                      // "03",
                      style: AppTextStyles.lineBoldTextStyle,
                    )
                  ],
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
                  dashGapLength: 6,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Claimed",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      claimed,
                      // "J21, J22, J23",
                      style: AppTextStyles.lineBoldTextStyle,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
