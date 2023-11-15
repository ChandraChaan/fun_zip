import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/drawer.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';


class EventScheduler extends StatefulWidget {
  @override
  State<EventScheduler> createState() => _EventSchedulerState();
}

class _EventSchedulerState extends State<EventScheduler> {
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
        drawer: const DrawerWidget(),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: SizeGet.getProportionHeight(70.0),
            // width: SizeGet.getProportionWidth(375.0),
            color: AppColors.deepWhite,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
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
                    'Event Scheduler',
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
                        "Add Scheduler",
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
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/d/df/Family_Portrait.jpg",
      "date": "Aug 25, 2023",
      "location": "Hi-tech City, Hyderabad",
      "heading": "The Routinel Hosted by Abish Mathew",
      "time": "01:30 AM - 02:00 AM",
    },
    {
      "image":
          "https://as2.ftcdn.net/v2/jpg/00/82/95/17/1000_F_82951723_HpxHjpLhFsGvM35F8Hq44NwbtzJc3GsB.jpg",
      "date": "Aug 25, 2023",
      "location": "Hi-tech City, Hyderabad",
      "heading": "The Zombies time show in the house",
      "time": "01:30 AM - 02:00 AM",
    },
    {
      "image":
          "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
      "date": "Aug 25, 2023",
      "location": "Hi-tech City, Hyderabad",
      "heading": "The Great Gatsby Party : Hyderabad",
      "time": "01:30 AM - 02:00 AM",
    },
    {
      "image":
          "https://imgv3.fotor.com/images/slider-image/A-clear-close-up-photo-of-a-woman.jpg",
      "date": "Aug 25, 2023",
      "location": "Hi-tech City, Hyderabad",
      "heading": "The Routinel Hosted by Abish Mathew",
      "time": "01:30 AM - 02:00 AM",
    },
    {
      "image":
      "https://images.squarespace-cdn.com/content/v1/58d1b3ff1b631bb1893d108d/813f4928-6cc6-4bc8-a4e4-265f94b4d665/matthew-hamilton-tNCH0sKSZbA-unsplash.jpg",
      "date": "Aug 25, 2023",
      "location": "Hi-tech City, Hyderabad",
      "heading": "The Zombies time show in the house",
      "time": "01:30 AM - 02:00 AM",
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
          time: groupDetails[index]["time"],
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
  final String time;

  singleCard(
      {required this.imageUrl,
      required this.location,
      required this.date,
      required this.heading,
      required this.time});

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
                        style: AppTextStyles.lineBoldTextStyle,
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
                            style: AppTextStyles.lineText10Style,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          const DottedLine(
                            direction: Axis.vertical,
                            // Set the direction to horizontal or vertical
                            lineLength: 20,
                            // The length of the line
                            lineThickness: 0.1,
                            // The thickness of the line
                            dashColor: AppColors.grey,
                            // The color of the line
                            dashGapLength: 0,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const FaIcon(
                            FontAwesomeIcons.clock,
                            size: 16,
                            color: AppColors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: const Text(
                              "01:30 AM - 02:00 AM",
                              style: AppTextStyles.lineText10Style,
                            ),
                          ),
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
                            // "Hi-tech City, Hyderabad",
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
          ],
        ),
      ),
    );
  }
}
