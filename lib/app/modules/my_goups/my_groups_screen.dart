import 'package:flutter/material.dart';
import 'package:fun_zippy/app/modules/my_events_screen/my_events.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';

import '../my_groups/my_groups.dart';

class MyGroupsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CommonScafold(
        child: DefaultTabController(
          length: 3, // Number of tabs
          child: Column(
              children: <Widget>[
                Container(
                  color: Color(0XFFEFEDFF),
                  child: TabBar(
                    indicatorColor: Color(0XFF5B46F4),
                    labelColor: Color(0XFF5B46F4),
                    unselectedLabelColor: Color(0XFF696488),
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          'Group',
                          //style: TextStyle(color: Color(0XFF696488)),
                        ),
                      ),
                      Tab(
                        child: Text('Messages'),
                      ),
                      Tab(
                        child: Text('My Events'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(

                    children: <Widget>[
                      // Content for Tab 1
                      MyGroups(),
                      // Content for Tab 2
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height:100,
                      width: 100,
                      child: Image.asset('assets/svg/airlines.svg')),
                        ],
                      ),
                      // Content for Tab 3
                      MyEvents()
                    ],
                  ),
                ),
              ],
            ),

        ),
      ),
    );
  }
}
