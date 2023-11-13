import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fun_zippy/app/utilities/colors_text_properties.dart';
import 'package:fun_zippy/app/utilities/drawer.dart';
import 'package:fun_zippy/app/utilities/dynamic_size.dart';

class My_Tickets extends StatefulWidget {
  @override
  State<My_Tickets> createState() => _My_TicketsState();
}

class _My_TicketsState extends State<My_Tickets> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController _pageController = PageController();

  String selectedCategory = 'Upcoming';

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeGet().init(context);

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[200],
      drawer: const DrawerWidget(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: SizeGet.getProportionHeight(70.0),
          // width: SizeGet.getProportionWidth(375.0),
          color: AppColors.white,
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
                    icon: Icon(Icons.menu),
                  ),
                ),
                const Text(
                  'My Tickets',
                  style: AppTextStyles.appBarTitleStyle,
                ),
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
                        margin: EdgeInsets.symmetric(horizontal: 16.0),
                        child: CircleAvatar(
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
          ),
        ),
        Container(
          height: SizeGet.getProportionHeight(50.0),
          width: SizeGet.getProportionWidth(375.0),
          color: Colors.deepPurple[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildCategory('Upcoming'),
                  buildCategory('Completed'),
                  buildCategory('Canceled'),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: CardList(),
        ),
      ]),
    );
  }

  Widget buildCategory(String category) {
    final isSelected = category == selectedCategory;
    return GestureDetector(
      onTap: () {
        selectCategory(category);
      },
      child: Column(
        children: [
          OptionButton(
            text: category,
            isSelected: isSelected,
          ),
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

class OptionButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const OptionButton({super.key, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          color: isSelected ? AppColors.deepPurple : Colors.grey[1000]),
    );
  }
}

class CardList extends StatelessWidget {
  final List<Map> ticketDetails = [
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/d/df/Family_Portrait.jpg",
      "ticketType": "Diamond",
      "tickets": "03",
      "seatNumber": "J21, J22, J23",
      "bookingId": "TRHAM521452671",
      "amount": "\$ 320.50",
      "date": "Aug 25, 2023 | 8:30PM",
      "location": "Hi-tech City, Hyderabad",
      "destination": "The Routinel Hosted by Abish Mathew"
    },
    {
      "image":
          "https://as2.ftcdn.net/v2/jpg/00/82/95/17/1000_F_82951723_HpxHjpLhFsGvM35F8Hq44NwbtzJc3GsB.jpg",
      "ticketType": "Diamond",
      "tickets": "03",
      "seatNumber": "J21, J22, J23",
      "bookingId": "TRHAM521452671",
      "amount": "\$ 320.50",
      "date": "Aug 25, 2023 | 8:30PM",
      "location": "Hi-tech City, Hyderabad",
      "destination": "The Routinel Hosted by Abish Mathew"
    },
    {
      "image":
          "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
      "ticketType": "Diamond",
      "tickets": "03",
      "seatNumber": "J21, J22, J23",
      "bookingId": "TRHAM521452671",
      "amount": "\$ 320.50",
      "date": "Aug 25, 2023 | 8:30PM",
      "location": "Hi-tech City, Hyderabad",
      "destination": "The Routinel Hosted by Abish Mathew"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ticketDetails.length,
      itemBuilder: (context, index) {
        return singleCard(
            imageUrl: ticketDetails[index]["image"],
            ticketType: ticketDetails[index]["ticketType"],
            tickets: ticketDetails[index]["tickets"],
            seatNumber: ticketDetails[index]["seatNumber"],
            amount: ticketDetails[index]["bookingId"],
            bookingId: ticketDetails[index]["amount"],
            location: ticketDetails[index]["date"],
            date: ticketDetails[index]["location"],
            destination: ticketDetails[index]["destination"]);
      },
    );
  }
}

class singleCard extends StatelessWidget {
  final String imageUrl;
  final String ticketType;
  final String tickets;
  final String seatNumber;
  final String amount;
  final String bookingId;
  final String location;
  final String date;
  final String destination;

  singleCard({
    required this.imageUrl,
    required this.ticketType,
    required this.tickets,
    required this.seatNumber,
    required this.amount,
    required this.bookingId,
    required this.location,
    required this.date,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
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
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(imageUrl
                              // 'https://upload.wikimedia.org/wikipedia/commons/d/df/Family_Portrait.jpg',
                              ),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  // height: SizeGet.getProportionHeight(70),
                  width: SizeGet.getProportionWidth(200),
                  child: Column(
                    children: [
                      Text(
                        destination,
                        style: AppTextStyles.headingTextStyle,
                        maxLines: 3, // Limit to 3 lines
                        overflow: TextOverflow
                            .ellipsis, // Show ellipsis (...) if text is truncated
                      ),
                      SizedBox(
                        height: 3,
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
                            //"Aug 25, 2023 | 8:30PM",
                            style: AppTextStyles.lineTextStyle,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
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
              ],
            ),
            SizedBox(
              height: 10,
            ),
            DottedLine(
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ticket Type",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ticketType,
                      // "Diamond",
                      style: AppTextStyles.lineBoldTextStyle,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                DottedLine(
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
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Tickets",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      tickets,
                      // "03",
                      style: AppTextStyles.lineBoldTextStyle,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                DottedLine(
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
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Seat Numbers",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.event_seat),
                        Text(
                          seatNumber,
                          // "J21, J22, J23",
                          style: AppTextStyles.lineBoldTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            DottedLine(
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
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Booking id",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      bookingId,
                      // "TRHAM521452671",
                      style: AppTextStyles.lineBoldTextStyle,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amount",
                      style: AppTextStyles.lineTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      amount,
                      // "\$ 320.50",
                      style: AppTextStyles.lineBoldTextStyle,
                    )
                  ],
                ),
                SizedBox(
                  width: 1,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            DottedLine(
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
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.airplane_ticket_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text("View Ticket")
                          ],
                        ))
                  ],
                ),
                DottedLine(
                  direction: Axis.vertical,
                  // Set the direction to horizontal or vertical
                  lineLength: 55,
                  // The length of the line
                  lineThickness: 1.0,
                  // The thickness of the line
                  dashColor: AppColors.grey,
                  // The color of the line
                  dashGapLength: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      color: AppColors.grey,
                    ),
                    Text(
                      "Contact support",
                      style: AppTextStyles.lineTextStyle,
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
