// import 'package:flutter/material.dart';
//
// class DetailsScreen extends StatefulWidget {
//   const DetailsScreen({super.key});
//
//   @override
//   State<DetailsScreen> createState() => _DetailsScreenState();
// }
//
// class _DetailsScreenState extends State<DetailsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Column(
//             children: [
//               Container(
//                 height: 180,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage('assets/svg/group_78.png'),
//                         fit: BoxFit.fill)),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 30, left: 21),
//                   child: Row(
//                     children: [
//                       Icon(
//                         Icons.arrow_back,
//                         color: Colors.white,
//                       ),
//                       SizedBox(
//                         width: 120,
//                       ),
//                       Text(
//                         'Details',
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Container(
//                   height: 54,
//                   width: 374,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 30,
//                         width: 131,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           border: Border.all(
//                             color: Color(0xFF4287F5), // Border color
//                             width: 2.0, // Border width
//                           ),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Add to Calendar',
//                             style: TextStyle(
//                                 color: Color(0xFF4287F5), fontSize: 10),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 15),
//                       Container(
//                         height: 30,
//                         width: 30,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             border: Border.all(color: Color(0xFF4287F5))),
//                         child: Icon(
//                           Icons.favorite,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       SizedBox(width: 15),
//                       Container(
//                         height: 30,
//                         width: 30,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             border: Border.all(color: Color(0xFF4287F5))),
//                         child: Icon(
//                           Icons.share,
//                           color: Color(0xFF4287F5),
//                         ),
//                       ),
//                       SizedBox(width: 45),
//                       Container(
//                         height: 26,
//                         width: 91,
//                         decoration: BoxDecoration(
//                           color: Color(0XFFA442F5),
//                           borderRadius: BorderRadius.circular(30),
//                           border: Border.all(
//                             color: Color(0xFF4287F5), // Border color
//                             width: 2.0, // Border width
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.videocam,
//                               size: 15,
//                               color: Colors.white,
//                             ),
//                             Text(
//                               'Watch Live',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 8,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 158,
//             width: 374,
//             decoration: BoxDecoration(
//               color: Color(0XFF4287F5),
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 26),
//               child: Column(
//                 children: [
//                   Text(
//                     'The Great Gatsby Party : Hyderabad',
//                     style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   Icon(Icons.location_on)
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class BookTickets extends StatefulWidget {
  const BookTickets({super.key});

  @override
  State<BookTickets> createState() => _BookTicketsState();
}

class _BookTicketsState extends State<BookTickets> {
  int _vaue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            child: Image.asset('assets/svg/ellipse_1.png'),
          )
        ],
        title: Center(
            child: Text(
          'Book Tickets',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 42,
                      width: 182,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(21)),
                      child: Center(child: Text('Tickets')),
                    ),
                    Container(
                      height: 42,
                      width: 182,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(21)),
                      child: Center(child: Text('RSVP')),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text('Gem Show Pass'),
                    SizedBox(
                      width: 220,
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.remove, size: 14),
                    ),
                    SizedBox(width: 2),
                    Text('0'),
                    SizedBox(width: 2),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.add, size: 14),
                    )
                  ],
                ),
                SizedBox(height: 7),
                Text(
                  'General',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 17,
                    ),
                    Text('5.00')
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Senior Citienn Pass',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 7,
                      width: 202,
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.remove, size: 14),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text('0'),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.add, size: 14),
                    )
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Text(
                      'Kids',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 7,
                      width: 202,
                    ),
                    SizedBox(
                      width: 93,
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.remove, size: 14),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text('0'),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.add, size: 14),
                    )
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Text(
                      'Adaltus',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 7,
                      width: 202,
                    ),
                    SizedBox(
                      width: 72,
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.remove, size: 14),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text('0'),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.add, size: 14),
                    )
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Citizen',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 7),
                Icon(
                  Icons.attach_money,
                  size: 17,
                ),
                Text('3.00'),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Emain',
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '+ 91 Phone Number',
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check_box_outline_blank),
                        Text('Accept'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_box_outline_blank),
                        Text('Decline'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_box_outline_blank),
                        Text('Maybe'),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 115,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        hintText: 'Comment',
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Checkout',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.pink,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
