import 'package:flutter/material.dart';
import 'package:fun_zippy/app/widgets/commonScafold.dart';

class MyGroupsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CommonScafold(
        child: DefaultTabController(
          length: 3, // Number of tabs
          child: Scaffold(
            body: Column(
              children: <Widget>[
                Container(
                  child: TabBar(
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          'Group',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text('Messages', style: TextStyle(color: Colors.black)),
                      ),
                      Tab(
                        child: Text('My Events', style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      // Content for Tab 1
                      Center(
                        child: Text('Tab 1 Content'),
                      ),
                      // Content for Tab 2
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/svg/calls.svg'),
                          ],
                        ),
                      ),
                      // Content for Tab 3
                      Center(
                        child: Text('Tab 3 Content'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
