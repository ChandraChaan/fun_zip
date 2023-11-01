import 'package:flutter/material.dart';
import 'package:fun_zippy/app/theme/colors.dart';
import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../scanner.dart';

class EventDashboardScreen extends StatefulWidget {
  const EventDashboardScreen({super.key});

  @override
  State<EventDashboardScreen> createState() => _EventDashboardScreenState();
}

class _EventDashboardScreenState extends State<EventDashboardScreen> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset(
          'assets/svg/vector_22.png',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 26,
                  decoration: BoxDecoration(
                    color: Color(0XFF5B46F4),
                    border: Border.all(
                      color: Color(0XFF5B46F4), // Border color
                      width: 2.0, // Border width
                    ),
                    shape: BoxShape.circle, // To make it a circular border
                  ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: InkWell(
                      onTap: (){
                        Get.to(QRCodeScannerScreen());
                      },
                      child: Icon(
                        Icons.photo_camera,
                        size: 14,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 26,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0XFF5B46F4), // Border color
                      width: 2.0, // Border width
                    ),
                    shape: BoxShape.circle, // To make it a circular border
                  ),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.qr_code,
                        color: Color(0XFF5B46F4),
                        size: 14,
                      )),
                ),
              ],
            ),
          )
        ],
        title: Center(
          child: Text(
            'Event Dashboard',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0XFF5B46F4),
                        borderRadius: BorderRadius.circular(14)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Color(0XFF2F2194),
                                borderRadius: BorderRadius.circular(4)),
                            child: Icon(
                              Icons.person_add_alt_1,
                              size: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Invited',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Text(
                              '10,250',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white70),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Color(0XFFFFE2D2),
                                borderRadius: BorderRadius.circular(4)),
                            child: Icon(
                              Icons.person_add_alt_1,
                              size: 13,
                              color: Color(0XFFFD5900),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Invited',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0XFF86839B)),
                            ),
                            Text(
                              '5,250',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Color(0XFFD9FFD4),
                                borderRadius: BorderRadius.circular(4)),
                            child: Icon(
                              Icons.person_add_alt_1,
                              size: 13,
                              color: Color(0XFF29A71A),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Adult Count',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0XFF86839B)),
                            ),
                            Text(
                              '15',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Event Page Traffic'),
                            Container(
                              height: 20,
                              width: 44,
                              decoration: BoxDecoration(
                                  color: Color(0XFFF0EEFF),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color: Color(0XFF5B46F4),
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                  2.width,
                                  Text(
                                    ('Events'),
                                    style: TextStyle(
                                        fontSize: 6, color: Color(0XFF86839B)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'All the latest stats for your event',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0XFF86839B)),
                            ),
                            SizedBox(
                              height: 18,
                              width: 18,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color(0XFF86839B)),
                                  color: Color(0XFFF9F9F9),
                                ),
                                child: Icon(Icons.home,size: 10,color: Color(0XFF86839B),),
                              ),
                            )
                          ],
                        ),
                        //Initialize the chart widget
                        SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            // Chart title
                            title: ChartTitle(text: 'Half yearly sales analysis'),
                            // Enable legend
                            legend: Legend(isVisible: true),
                            // Enable tooltip
                            tooltipBehavior: TooltipBehavior(enable: true),
                            series: <ChartSeries<_SalesData, String>>[
                              LineSeries<_SalesData, String>(
                                  dataSource: data,
                                  xValueMapper: (_SalesData sales, _) => sales.year,
                                  yValueMapper: (_SalesData sales, _) => sales.sales,
                                  name: 'Sales',
                                  // Enable data label
                                  dataLabelSettings: DataLabelSettings(isVisible: true))
                            ]),

                        //
                      ],
                    ),
                  ),
                ),
              ),
              for (int a = 1; a <= 7; a++)
                Padding(
                  padding: const EdgeInsets.all(5),
                  child:
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Ticket Summary',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 20,
                                          width: 44,
                                          decoration: BoxDecoration(
                                              color: Color(0XFFF0EEFF),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                  'assets/svg/export.png'),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Text(
                                                ('Export'),
                                                style: TextStyle(
                                                    fontSize: 6,
                                                    color: Color(0XFF86839B)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            height: 20,
                                            width: 44,
                                            decoration: BoxDecoration(
                                                color: Color(0XFFF0EEFF),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/svg/filter.png'),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                  ('Export'),
                                                  style: TextStyle(
                                                      fontSize: 6,
                                                      color: Color(0XFF86839B)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0XFFE3E3E3),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Name',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Icon(
                                                Icons.expand_more,
                                                size: 10,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Quantity',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Icon(
                                                Icons.expand_more,
                                                size: 10,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Total',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                              Icon(
                                                Icons.expand_more,
                                                size: 10,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      color: Color(0XFFF6F6F6),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  height: 22,
                                                  width: 22,
                                                  decoration: BoxDecoration(
                                                      color: Color(0XFFFFE2D2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Center(
                                                      child: Image.asset(
                                                          'assets/svg/filter.png'))),
                                              SizedBox(width: 4),
                                              Text(
                                                'General',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '01',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Text(
                                            '01',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 1),
                                    Container(
                                      height: 30,
                                      color: Color(0XFFF6F6F6),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  height: 22,
                                                  width: 22,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Center(
                                                      child: Image.asset(
                                                          'assets/svg/vip.png'))),
                                              SizedBox(width: 4),
                                              Text(
                                                'Vip',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '05',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Text(
                                            '05',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 1),
                                    Container(
                                      height: 30,
                                      color: Color(0XFFF6F6F6),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  height: 22,
                                                  width: 22,
                                                  decoration: BoxDecoration(
                                                      color: Color(0XFFFFECF0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Center(
                                                      child: Image.asset(
                                                          'assets/svg/calendar_day.png'))),
                                              SizedBox(width: 4),
                                              Text(
                                                'Multiday pass',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '03',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Text(
                                            '03',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 1),
                                    Container(
                                      height: 30,
                                      color: Color(0XFFF6F6F6),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  height: 22,
                                                  width: 22,
                                                  decoration: BoxDecoration(
                                                      color: Color(0XFFD9FFD4),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Center(
                                                      child: Image.asset(
                                                          'assets/svg/badge.png'))),
                                              SizedBox(width: 4),
                                              Text(
                                                'Gem Show Pass',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '02',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Text(
                                            '02',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Showing 01_01 of 38',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0XFF85829B)),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 14,
                                                width: 14,
                                                color: Color(0XFFF6F6F6),
                                                child: Icon(
                                                  Icons.arrow_back_ios,
                                                  size: 7,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Container(
                                                height: 14,
                                                width: 14,
                                                color: Color(0XFFF6F6F6),
                                                child: Center(
                                                  child: Text(
                                                    '1',
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Container(
                                                height: 14,
                                                width: 14,
                                                color: Color(0XFFF6F6F6),
                                                child: Center(
                                                  child: Text(
                                                    '2',
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Container(
                                                height: 14,
                                                width: 14,
                                                color: Color(0XFFF6F6F6),
                                                child: Center(
                                                  child: Text(
                                                    '3',
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Container(
                                                height: 14,
                                                width: 14,
                                                color: Color(0XFFF6F6F6),
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 7,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 20,
                                        width: 58,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                color: Color(0XFFDC143C))),
                                        child: Center(
                                          child: Text(
                                            'Details',
                                            style: TextStyle(
                                                color: Color(0XFFDC143C),
                                                fontSize: 8),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
