import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:fun_zippy/app/dragAndDrop/FilesPicker.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/drawer.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';

class invitees extends StatefulWidget {
  const invitees({super.key});

  @override
  State<invitees> createState() => _inviteesState();
}

class _inviteesState extends State<invitees> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late DropzoneViewController controller1;
  late DropzoneViewController controller2;

  @override
  Widget build(BuildContext context) {
    SizeGet().init(context);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.customGrey,
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: SizeGet.getProportionHeight(70.0),
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
                    'Invitees',
                    style: AppTextStyles.appBarTitleStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: SizedBox(
                      width: SizeGet.getProportionWidth(375 / 3),
                      // 118.0, // Adjust the width as needed
                      height: SizeGet.getProportionWidth(70 / 2.5),
                      // Adjust the height as needed
                      child: OutlinedButton(
                        onPressed: () {
                          // Define what should happen when the button is pressed
                        },
                        style: ButtonStyle(
                          // backgroundColor: MaterialStateProperty.all(Colors.blue),
                          side: MaterialStateProperty.all(
                              const BorderSide(color: AppColors.deepPurple)),
                          // Border color
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20.0),
                                // Adjust the radius as needed
                                right: Radius.circular(
                                    20.0), // Adjust the radius as needed
                              ),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Select Contacts',
                          style: AppTextStyles.lineText12PurpleStyle,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
                child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Text(
                    "Invitees File",
                    style: AppTextStyles.lineText14BoldStyle,
                  ),
                ),
                FilesPicker(),
              ],
            )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Invitees",
                  style: AppTextStyles.lineText14BoldStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: SizedBox(
                    width: SizeGet.getProportionWidth(375 / 4.5),
                    // 118.0, // Adjust the width as needed
                    height: SizeGet.getProportionWidth(70 / 2.5),
                    // Adjust the height as needed
                    child: OutlinedButton(
                      onPressed: () {
                        // Define what should happen when the button is pressed
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.deepPurple),
                        // side: MaterialStateProperty.all(
                        //     const BorderSide(color: AppColors.deepPurple)),
                        // Border color
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20.0),
                              // Adjust the radius as needed
                              right: Radius.circular(
                                  20.0), // Adjust the radius as needed
                            ),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Export',
                        style: TextStyle(color: AppColors.deepWhite),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          CardList(),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red, backgroundColor: Colors.white, // Text color
                    side: const BorderSide(color: Colors.red), // Border color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), // Adjust the value for the desired edge curve
                    ),
                  ),
                  onPressed: (){},
                  child: const Text("Remind to RSVP", style: TextStyle(fontWeight: FontWeight.bold),)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red, backgroundColor: Colors.white, // Text color
                    side: const BorderSide(color: Colors.red), // Border color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), // Adjust the value for the desired edge curve
                    ),
                  ),
                  onPressed: (){},
                  child: const Text("Send Event Reminder", style: TextStyle(fontWeight: FontWeight.bold),)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // primary: Colors.white,  // Background color
                    backgroundColor: Colors.red.shade900,
                    side: const BorderSide(color: Colors.red), // Border color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), // Adjust the value for the desired edge curve
                    ),
                  ),
                  onPressed: (){},
                  child: const Text("Send Message", style: TextStyle(fontWeight: FontWeight.bold),)
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  final List<Map> inviteesDetailes = [
    {
      "name": "Scarlett Johansson",
      "mail": "johansson@gmail.com",
      "phoneNumber": "+91 9876543210",
      "adults": "14",
      "kids": "14",
      "status": "Accepted"
    },
    {
      "name": "Chris Evans",
      "mail": "chrisevans@gmail.com",
      "phoneNumber": "+91 9876543210",
      "adults": "14",
      "kids": "14",
      "status": "Accepted"
    },
    {
      "name": "Brie Larson",
      "mail": "brielarson@gmail.com",
      "phoneNumber": "+91 9876543210",
      "adults": "14",
      "kids": "14",
      "status": "Accepted"
    },
    {
      "name": "Elizabeth Olsen",
      "mail": "elizabetholsen@gmail.com",
      "phoneNumber": "+91 9876543210",
      "adults": "14",
      "kids": "14",
      "status": "Accepted"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: inviteesDetailes.length,
      itemBuilder: (context, index) {
        return singleCard(
            name: inviteesDetailes[index]["name"],
            mail: inviteesDetailes[index]["mail"],
            phoneNumber: inviteesDetailes[index]["phoneNumber"],
            adults: inviteesDetailes[index]["adults"],
            kids: inviteesDetailes[index]["kids"],
            status: inviteesDetailes[index]["status"]);
      },
    );
  }
}

class singleCard extends StatelessWidget {
  final String name;
  final String mail;
  final String phoneNumber;
  final String adults;
  final String kids;
  final String status;

  singleCard(
      {required this.name,
      required this.mail,
      required this.phoneNumber,
      required this.adults,
      required this.kids,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: SizeGet.getProportionWidth(375 / 1.8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: AppTextStyles.headingTextStyle,
                        maxLines: 3, // Limit to 3 lines
                        overflow: TextOverflow
                            .ellipsis, // Show ellipsis (...) if text is truncated
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.mail_outline_outlined,
                            color: AppColors.grey,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            mail,
                            //"Aug 25, 2023 | 8:30PM",
                            style: AppTextStyles.lineText12Style,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.wifi_calling_3_outlined,
                            color: AppColors.grey,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            phoneNumber,
                            style: AppTextStyles.lineText12Style,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: SizeGet.getProportionWidth(375 / 14),
                      // 118.0, // Adjust the width as needed
                      height: SizeGet.getProportionWidth(70 / 2.5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.grey[200]),
                      child: const Center(
                        child: Icon(
                            Icons.remove_red_eye_outlined,
                            size: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: SizeGet.getProportionWidth(375 / 14),
                      // 118.0, // Adjust the width as needed
                      height: SizeGet.getProportionWidth(70 / 2.5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.grey[200]),
                      child: const Center(
                        child: Icon(
                            Icons.edit_outlined,
                            size: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: SizeGet.getProportionWidth(375 / 14),
                      // 118.0, // Adjust the width as needed
                      height: SizeGet.getProportionWidth(70 / 2.5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.grey[200]),
                      child: const Center(
                        child: Icon(
                            Icons.delete_forever_outlined,
                            size: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const DottedLine(
              direction: Axis.horizontal,
              // Set the direction to horizontal or vertical
              lineLength: double.infinity,
              // The length of the line
              lineThickness: 2.0,
              // The thickness of the line
              dashColor: AppColors.customGrey,
              // The color of the line
              dashGapLength: 0,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Adults",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      adults,
                      // "Diamond",
                      style: AppTextStyles.lineBoldTextStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: SizeGet.getProportionHeight(812 / 13),
                  child: const DottedLine(
                    direction: Axis.vertical,
                    // Set the direction to horizontal or vertical
                    lineLength: double.infinity,
                    // The length of the line
                    lineThickness: 2.0,
                    // The thickness of the line
                    dashColor: AppColors.customGrey,
                    // The color of the line
                    dashGapLength: 0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Kids",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      kids,
                      // "03",
                      style: AppTextStyles.lineBoldTextStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: SizeGet.getProportionHeight(812 / 13),
                  child: const DottedLine(
                    direction: Axis.vertical,
                    // Set the direction to horizontal or vertical
                    lineLength: double.infinity,
                    // The length of the line
                    lineThickness: 2.0,
                    // The thickness of the line
                    dashColor: AppColors.customGrey,
                    // The color of the line
                    dashGapLength: 0,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: SizeGet.getProportionHeight(812 / 13),
                  child: const DottedLine(
                    direction: Axis.vertical,
                    // Set the direction to horizontal or vertical
                    lineLength: double.infinity,
                    // The length of the line
                    lineThickness: 2.0,
                    // The thickness of the line
                    dashColor: AppColors.customGrey,
                    // The color of the line
                    dashGapLength: 0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Status",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      status,
                      // "Accepted",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: (status.toLowerCase() == "canceled")
                            ? Colors.grey
                            : ((status.toLowerCase() == "accepted")
                                ? Colors.green
                                : Colors.red),
                      ),
                    ),
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
