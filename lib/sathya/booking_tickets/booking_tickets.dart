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

import '../../app/extra/for_me.dart';

class BookTickets extends StatefulWidget {
  const BookTickets({super.key});

  @override
  State<BookTickets> createState() => _BookTicketsState();
}

class _BookTicketsState extends State<BookTickets> {
  //final Price price; // You need to define a Price class to hold the price and quantity
  String defaultCountryCode = '+91';
  List<String> countryCodes = ['+91', '+92', '+93', '+94'];
  TextEditingController phoneNumberController = TextEditingController();

  bool accept = false;
  bool decline = false;
  bool maybe = false;

double productPrice = 1.0; //quantity
  double productPriceOne = 3.0;


  void increasePrice() {
    setState(() {
      productPrice += 1.0;
    });
  }

  void decreasePrice() {
    setState(() {
      if(productPrice > 1.0){
        productPrice -= 1.0;
      }
    });
  }

void increasePriceOne(){
    setState(() {
      productPriceOne += 3.0;
    });
}

void decreasePriceOne(){
    setState(() {

    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 540,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15),
                          Text(
                            'Tickets',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              Text('Gem Show Pass'),
                              SizedBox(
                                width: 160,
                              ),
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    color: Color(0XFFE8E7F0),
                                    borderRadius: BorderRadius.circular(25)),
                                child: InkWell(
                                    onTap: decreasePrice,
                                    child: Icon(Icons.remove, size: 14)),
                              ),
                              SizedBox(width: 4),
                              Text('${productPrice.toStringAsFixed(2)}'),
                              SizedBox(width: 4),
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    color: Color(0XFFE8E7F0),
                                    borderRadius: BorderRadius.circular(25)),
                                child: InkWell(
                                    onTap: increasePrice,
                                    child: Icon(Icons.add, size: 14)),
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
                                color: Color(0XFF5B46F4),
                                size: 17,
                              ),
                              Text('5.00',
                                  style: TextStyle(color: Color(0XFF5B46F4)))
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Text('Senior Citizen Pass'),
                              SizedBox(
                                width: 130,
                              ),
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    color: Color(0XFFE8E7F0),
                                    borderRadius: BorderRadius.circular(25)),
                                child: InkWell(
                                    onTap: (){},
                                    child: Icon(Icons.remove, size: 14)),
                              ),
                              SizedBox(width: 4),
                              Text('0'),
                              SizedBox(width: 4),
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    color: Color(0XFFE8E7F0),
                                    borderRadius: BorderRadius.circular(25)),
                                child: InkWell(
                                    onTap: (){},
                                    child: Icon(Icons.add, size: 14)),
                              )
                            ],
                          ),
                          SizedBox(height: 7),
                          Text(
                            'Citizen',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 7),
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Color(0XFF5B46F4),
                                size: 17,
                              ),
                              Text(
                                '3.00',
                                style: TextStyle(color: Color(0XFF5B46F4)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Name',
                                      hintStyle: TextStyle(fontSize: 12),
                                      filled: true,
                                      fillColor: Color(0XFFE8E7F0),
                                      border: InputBorder.none,
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Text(
                                'Email',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: TextStyle(fontSize: 12),
                                      filled: true,
                                      fillColor: Color(0XFFE8E7F0),
                                      border: InputBorder.none,
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Text(
                                'Phone Number',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0XFFF5F4F9),
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: DropdownButton<String>(
                                        value: defaultCountryCode,
                                        onChanged: (newValue) {
                                          setState(() {
                                            defaultCountryCode = newValue!;
                                          });
                                        },
                                        items: countryCodes.map((code) {
                                          return DropdownMenuItem<String>(
                                            value: code,
                                            child: Text(code,style: TextStyle(fontSize: 12),),
                                          );
                                        }).toList(),
                                        underline: Container(
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Container(
                                      height: 40,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Phone Number',
                                            hintStyle:
                                                TextStyle(fontSize: 12),
                                            filled: true,
                                            fillColor: Color(0XFFE8E7F0),
                                            border: InputBorder.none,
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20)),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20))),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Checkout',
                                  hintStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  filled: true,
                                  fillColor: Color(0XFFC61236),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(20))),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 560,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Text(
                        'RSVP',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text('Adults'),
                          SizedBox(
                            width: 237,
                          ),
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: Color(0XFFE8E7F0),
                                borderRadius: BorderRadius.circular(25)),
                            child: InkWell(
                                onTap: (){},
                                child: Icon(Icons.remove, size: 14)),
                          ),
                          SizedBox(width: 4),
                          Text('0'),
                          SizedBox(width: 4),
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: Color(0XFFE8E7F0),
                                borderRadius: BorderRadius.circular(25)),
                            child: InkWell(
                                onTap: (){},
                                child: Icon(Icons.add, size: 14)),
                          )
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            color: Color(0XFF5B46F4),
                            size: 17,
                          ),
                          Text(
                            '3.00',
                            style: TextStyle(color: Color(0XFF5B46F4)),
                          ),
                        ],
                      ),
                      SizedBox(height: 14),
                      Row(
                        children: [
                          Text('Kids'),
                          SizedBox(
                            width: 240,
                          ),
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: Color(0XFFE8E7F0),
                                borderRadius: BorderRadius.circular(25)),
                            child: InkWell(
                                onTap: (){},
                                child: Icon(Icons.remove, size: 14)),
                          ),
                          SizedBox(width: 4),
                          Text('0'),
                          SizedBox(width: 4),
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: Color(0XFFE8E7F0),
                                borderRadius: BorderRadius.circular(25)),
                            child: InkWell(
                                onTap: (){},
                                child: Icon(Icons.add, size: 14)),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            color: Color(0XFF5B46F4),
                            size: 17,
                          ),
                          Text(
                            '3.00',
                            style: TextStyle(color: Color(0XFF5B46F4)),
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Name',
                                  hintStyle: TextStyle(fontSize: 12),
                                  filled: true,
                                  fillColor: Color(0XFFE8E7F0),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(20))),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(fontSize: 12),
                                  filled: true,
                                  fillColor: Color(0XFFE8E7F0),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(20))),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            'Phone Number',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '+91 Phone Number',
                                  hintStyle: TextStyle(fontSize: 12),
                                  filled: true,
                                  fillColor: Color(0XFFE8E7F0),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.circular(20))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    accept = !accept;
                                  });
                                  // Handle the click action for 'Accept' checkbox here
                                },
                                child: Icon(
                                  accept
                                      ? Icons.check_box
                                      : Icons.check_box_outline_blank,
                                  color: Color(0XFF5B46F4)
                                ),
                              ),
                              Text('Accept'),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    decline = !decline;
                                  });
                                  // Handle the click action for 'Decline' checkbox here
                                },
                                child: Icon(decline
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank),
                              ),
                              Text('Decline'),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    maybe = !maybe;
                                  });
                                  // Handle the click action for 'Maybe' checkbox here
                                },
                                child: Icon(maybe
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank),
                              ),
                              Text('Maybe'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: 115,
                        width: double.infinity,
                        child: TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0XFFE8E7F0),
                            hintText: 'Comment',
                            hintStyle: TextStyle(fontSize: 12),
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Price {
  final double price;
  int quantity;

  Price(this.price, this.quantity);
}
