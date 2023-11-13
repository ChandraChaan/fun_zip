import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('User name'),
            accountEmail: Text('Username@email.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://c7.alamy.com/comp/TC2FPE/young-man-avatar-cartoon-character-profile-picture-TC2FPE.jpg'), // Replace with your image path
            ),
          ),
          ListTile(
            title: const Text('Menu Item 1'),
            onTap: () {
              // Handle the action for Menu Item 1
              // You can also use the innerContext here if needed
            },
          ),
          ListTile(
            title: const Text('Menu Item 2'),
            onTap: () {
              // Handle the action for Menu Item 2
              // You can also use the innerContext here if needed
            },
          ),
        ],
      ),
    );
  }
}