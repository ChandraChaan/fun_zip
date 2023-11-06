import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';

import '../common_data/common_container.dart';

class TicketSaleDetailsScreen extends StatelessWidget {
  static const List listData = [
    {"name": "Category", "sub": "General", "button": true},
    {"name": "Date", "sub": "Mar 19 Sun", "button": false},
    {"name": "Name", "sub": "Vasantha", "button": false},
    {"name": "Count", "sub": "1", "button": false},
    {"name": "Total", "sub": "1", "button": false},
    {"name": "Checked In", "sub": "0", "button": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
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
                                    flex: 8,
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
                                    flex: 4,
                                    child: listData[a]['button'].toString() ==
                                            'true'
                                        ? InkWell(
                                        onTap: (){},
                                        child: CommonContainer())
                                        : Container()),
                              ],
                            ),
                            SizedBox(height: 7),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Container(
                  height: 35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0XFFC61236),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child:
                        Text('Export', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 35,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      // Add your onPressed functionality here
                    },
                    style: TextButton.styleFrom(
                      // backgroundColor: Color(0XFFC61236), // Background color
                      primary: Colors.black, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                            color: Color(0XFFC61236)), // Border color
                      ),
                    ),
                    child: Text('Send Reminder',
                        style: TextStyle(color: Color(0XFFC61236))),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFF5F4F9), // Background color
                    primary: Colors.black, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side:
                          BorderSide(color: Color(0XFFC9C6E1)), // Border color
                    ),
                  ),
                  child: Text('Close'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
