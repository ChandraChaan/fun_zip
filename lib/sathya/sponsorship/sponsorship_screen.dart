import 'package:flutter/material.dart';

class SponsorshipScreen extends StatefulWidget {
  const SponsorshipScreen({super.key});

  @override
  State<SponsorshipScreen> createState() => _SponsorshipScreenState();
}

class _SponsorshipScreenState extends State<SponsorshipScreen> {
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
          'Sponsorship',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Diamond'),
                Row(
                  children: [
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
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.attach_money,
                  size: 12,
                ),
                SizedBox(height: 25),
                Text(
                  '100.00',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Platinum'),
                Row(
                  children: [
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
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.attach_money,
                  size: 12,
                ),
                SizedBox(height: 25),
                Text(
                  '100.00',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            // Row(
            //   children: [
            //     Text('Jewellery'),
            //     SizedBox(
            //       width: 272,
            //     ),
            //     Container(
            //       height: 22,
            //       width: 22,
            //       decoration: BoxDecoration(
            //           color: Colors.grey,
            //           borderRadius: BorderRadius.circular(25)),
            //       child: Icon(Icons.remove, size: 14),
            //     ),
            //     SizedBox(width: 2),
            //     Text('0'),
            //     SizedBox(width: 2),
            //     Container(
            //       height: 22,
            //       width: 22,
            //       decoration: BoxDecoration(
            //           color: Colors.grey,
            //           borderRadius: BorderRadius.circular(25)),
            //       child: Icon(Icons.add, size: 14),
            //     )
            //   ],
            // ),
            // Row(
            //   children: [
            //     Icon(
            //       Icons.attach_money,
            //       size: 12,
            //     ),
            //     SizedBox(height: 25),
            //     Text(
            //       '100.00',
            //       style: TextStyle(
            //           fontSize: 10,
            //           color: Colors.deepPurpleAccent,
            //           fontWeight: FontWeight.bold),
            //     )
            //   ],
            // ),
            // SizedBox(
            //   height: 7,
            // ),
            // Row(
            //   children: [
            //     Text('Watches'),
            //     SizedBox(
            //       width: 277,
            //     ),
            //     Container(
            //       height: 22,
            //       width: 22,
            //       decoration: BoxDecoration(
            //           color: Colors.grey,
            //           borderRadius: BorderRadius.circular(25)),
            //       child: Icon(Icons.remove, size: 14),
            //     ),
            //     SizedBox(width: 2),
            //     Text('0'),
            //     SizedBox(width: 2),
            //     Container(
            //       height: 22,
            //       width: 22,
            //       decoration: BoxDecoration(
            //           color: Colors.grey,
            //           borderRadius: BorderRadius.circular(25)),
            //       child: Icon(Icons.add, size: 14),
            //     )
            //   ],
            // ),
            // Row(
            //   children: [
            //     Icon(
            //       Icons.attach_money,
            //       size: 12,
            //     ),
            //     SizedBox(height: 25),
            //     Text(
            //       '200.00',
            //       style: TextStyle(
            //           fontSize: 10,
            //           color: Colors.deepPurpleAccent,
            //           fontWeight: FontWeight.bold),
            //     )
            //   ],
            // ),
            // Row(
            //   children: [
            //     Text('Clothing'),
            //     SizedBox(
            //       width: 280,
            //     ),
            //     Container(
            //       height: 22,
            //       width: 22,
            //       decoration: BoxDecoration(
            //           color: Colors.grey,
            //           borderRadius: BorderRadius.circular(25)),
            //       child: Icon(Icons.remove, size: 14),
            //     ),
            //     SizedBox(width: 2),
            //     Text('0'),
            //     SizedBox(width: 2),
            //     Container(
            //       height: 22,
            //       width: 22,
            //       decoration: BoxDecoration(
            //           color: Colors.grey,
            //           borderRadius: BorderRadius.circular(25)),
            //       child: Icon(Icons.add, size: 14),
            //     )
            //   ],
            // ),
            // Row(
            //   children: [
            //     Icon(
            //       Icons.attach_money,
            //       size: 12,
            //     ),
            //     SizedBox(height: 25),
            //     Text(
            //       '500.00',
            //       style: TextStyle(
            //           fontSize: 10,
            //           color: Colors.deepPurpleAccent,
            //           fontWeight: FontWeight.bold),
            //     )
            //   ],
            // ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(fontSize: 12),
                  filled: true,
                  prefixIcon: Icon(Icons.person),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: '+91 Phone Number',
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
              height: 14,
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: SizedBox(
                      height: 10,
                      width: 10,
                      child: Image.asset('assets/svg/monitor.png')),
                  prefixStyle: TextStyle(fontSize: 10),
                  hintText: 'Business/Nature oof sponsorship',
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
              height: 14,
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(fontSize: 12),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.language,
                    color: Colors.blue,
                  ),
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
              child: TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.cloud_upload,
                          color: Colors.blue,
                        ),
                        Text('Drop logo/Image here to'),
                        Text('Upload')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: Row(
                    children: [Icon(Icons.comment), Text('Comment')],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 15,
                    ),
                    Text(
                      '250.15',
                      style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  height: 35,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(
                    'Checkout',
                    style: TextStyle(color: Colors.white),
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
