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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 95,
            color: Colors.white,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 16,
                  ),
                  Text(
                    'Book Tickets',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    radius: 15,
                    child: Image.asset('assets/svg/ellipse_1.png'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 7,
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
                Row(
                  children: [
                    Text('Gem Show Pass'),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.remove, size: 14),
                    ),
                    Text('0'),
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
                Text(
                  'General',
                  style: TextStyle(fontSize: 12),
                ),
                Icon(Icons.attach_money),
                Row(
                  children: [
                    Text(
                      'Senior Citienn Pass',
                      style: TextStyle(fontSize: 14),
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.remove, size: 14),
                    ),
                    Text('0'),
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
                Text(
                  'Citizen',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
