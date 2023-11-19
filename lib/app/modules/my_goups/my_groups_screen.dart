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
                    MessagesImage(),
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

class MessagesImage extends StatelessWidget {
  const MessagesImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/svg/message_1.svg'),
          width: 200.0, // Set the width of the image as needed
          height: 200.0, // Set the height of the image as needed
        ),
      ),
    );
  }
}
