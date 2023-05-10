import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://ibb.co/Hxn5prY"),
              ),
              accountName: Text("Rishi Jain"),
              accountEmail: Text("rishijain2607@gmail.com"),
              decoration: BoxDecoration(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
