import 'package:flutter/material.dart';

import '../data/repository/event_repository.dart';
import '../modules/my_events_screen/my_events.dart';
import '../config/images_links.dart';
import '../modules/create_event/views/create_event_view.dart';
import '../modules/home/views/components/BottomNavigationBarItemWidget.dart';
import '../modules/home/views/tabs/event_tab/event_tab.dart';
// import '../modules/scarlett_screen/scarlett_screen.dart';
import '../modules/scarlett_screen/scarlett_screen.dart';
import '../theme/colors.dart';
import '../theme/text_theme.dart';
import 'error_snackbar.dart';

class CommonScafold extends StatefulWidget {
  final String? title;
  final Widget? child;
  final Widget? titleChild;
  final Widget? bottomNavigationBar;
  final int? selectedIndex;
  final bool navChild;

  CommonScafold(
      {super.key,
      this.title,
      this.titleChild,
      this.selectedIndex = 0,
      this.navChild = false,
      this.bottomNavigationBar,
      this.child});

  @override
  State<CommonScafold> createState() => _CommonScafoldState();
}

class _CommonScafoldState extends State<CommonScafold> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<BottomNavigationBarItem> itemsBoomList = [
    menuItemWidget(
      label: 'Home',
      image: homeButtonNavigationIconImage,
    ),
    menuItemWidget(
      label: 'Create Event',
      image: plusButtonNavigationIconImage,
    ),
    menuItemWidget(
      label: 'My Event',
      image: eventButtonNavigationIconImage,
    ),
    menuItemWidget(
      label: 'My Tickets',
      image: profileButtonNavigationIconImage,
    ),
  ];
  int selectedIndex = 0;
  bool useMenu = false;

  Map profileData = {};

  Future<void> getProfile() async {
    try {
      var response = await EventRepository().getProfile();
      print(response.toString());
      print('Sathya');
      final bodyData = response;
      setState(() {
        profileData = (bodyData); // Wrap bodyData in a list
      });
    } catch (e) {
      errorSnackbar(title: '$e', desc: '');
    }
  }

  @override
  void initState() {
    getProfile();
    setState(() {
      selectedIndex = widget.selectedIndex ?? selectedIndex;
    });
    super.initState();
  }


  static List<Widget> _widgetOptions = <Widget>[
    EventTab(),
    CreateEventView(
      isSfald: false,
    ),
    MyEvents(isSfald: false,),
    Center(
      child: Text(
        'My Profile',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      key: _scaffoldKey,
      drawer: Drawer(child: ScarlettScreen(profileData: profileData,)),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Image.asset('assets/svg/bars_2.png'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepPurple, // Border color
                  width: 2.0, // Border width
                ),
                shape: BoxShape.circle, // To make it a circular border
              ),
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/svg/ellipse_1.png'),
                ),
              ),
            ),
          )
        ],
        title: Center(
          child: widget.navChild == false || selectedIndex != 0 || useMenu
              ? Text(
                  '${itemsBoomList[selectedIndex].label}',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )
              : (widget.titleChild ??
                  Text(
                    (widget.title ?? ' '),
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
        ),
      ),
      body: widget.navChild == true || selectedIndex != 0 || useMenu
          ? _widgetOptions.elementAt(selectedIndex)
          : widget.child,
      bottomNavigationBar: widget.bottomNavigationBar ?? BottomNavigation(),
    );
  }

  Widget BottomNavigation() {
    return BottomNavigationBar(
      selectedLabelStyle: normalText.copyWith(fontSize: 10),
      unselectedFontSize: 10,
      items: itemsBoomList,
      currentIndex: selectedIndex,
      selectedItemColor: Colors.red,
      unselectedItemColor: textColor,
      unselectedLabelStyle: normalText.copyWith(fontSize: 10),
      showUnselectedLabels: true,
      onTap: (int index) {
        setState(() {
          selectedIndex = index;
          useMenu = true;
        });
      },
    );
  }
}
