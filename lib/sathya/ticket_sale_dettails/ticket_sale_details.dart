import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';

import '../common_container.dart';

class TicketSaleDetailsScreen extends StatelessWidget {
  static const List listData = [
    {"name": "Category", "sub": "General", "button": true},
    {"name": "Date", "sub": "Mar 19 Sun", "button": false},
    {"name": "Date", "sub": "Mar 19 Sun", "button": false},
    {"name": "Date", "sub": "Mar 19 Sun", "button": false},
    {"name": "Date", "sub": "Mar 19 Sun", "button": true},
    {"name": "Date", "sub": "Mar 19 Sun", "button": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 20,
        ),
        title: Center(
          child: Text(
            'Ticket Sales Details',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              for (int a = 1; a <= 5; a++)
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0XFFC9C6E1))),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // TODO do add currect list name above used
                          for (int a = 0; a < listData.length; a++) ...[
                            Row(
                              children: [
                                Expanded(
                                    flex: 17,
                                    child: Text('${listData[a]['name']}',
                                        style: TextStyle(fontSize: 12))),
                                Expanded(
                                  flex: 15,
                                  child: Text(
                                    ': ${listData[a]['sub']}',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Expanded(
                                    flex: 7,
                                    child: listData[a]['button'].toString() ==
                                            'true'
                                        ? CommonContainer()
                                        : Container()),
                              ],
                            ),
                            SizedBox(height: 7),
                          ],
                          // Row(
                          //   children: [
                          //     Text(
                          //       'Date',
                          //       style: TextStyle(fontSize: 12),
                          //     ),
                          //     133.width,
                          //     Text(
                          //       ': ',
                          //       style: TextStyle(fontSize: 12),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(height: 7),
                          // Row(
                          //   children: [
                          //     Text(
                          //       'Name',
                          //       style: TextStyle(fontSize: 12),
                          //     ),
                          //     126.width,
                          //     Text(
                          //       ': Vasantha',
                          //       style: TextStyle(fontSize: 12),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(height: 7),
                          // Row(
                          //   children: [
                          //     Text(
                          //       'Count',
                          //       style: TextStyle(fontSize: 12),
                          //     ),
                          //     126.width,
                          //     Text(
                          //       ': 1',
                          //       style: TextStyle(fontSize: 12),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(height: 7),
                          // Row(
                          //   children: [
                          //     Text(
                          //       'Total',
                          //       style: TextStyle(fontSize: 12),
                          //     ),
                          //     131.width,
                          //     Text(
                          //       ': 1',
                          //       style: TextStyle(fontSize: 12),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(height: 7),
                          // Row(
                          //   children: [
                          //     Text(
                          //       'Checked in',
                          //       style: TextStyle(fontSize: 12),
                          //     ),
                          //     99.width,
                          //     Text(
                          //       ': 0',
                          //       style: TextStyle(fontSize: 12),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      color: Color(0XFFC61236),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(
                    'Export',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0XFFC61236))),
                  child: Center(
                    child: Text(
                      'Send Reminder',
                      style: TextStyle(color: Color(0XFFC61236)),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Add your onPressed functionality here
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0XFFF5F4F9), // Background color
                  primary: Color(0XFFC9C6E1), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Color(0XFFC9C6E1)), // Border color
                  ),
                ),
                child: Text('Close'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
