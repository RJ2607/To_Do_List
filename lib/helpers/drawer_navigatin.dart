import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project/screens/categories_screen.dart';
import 'package:project/screens/home_screen.dart';

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
                backgroundImage:
                    NetworkImage("https://i.ibb.co/9VsQ3q2/990130.jpg"),
              ),
              accountName: Text("Rishi Jain"),
              accountEmail: Text("rishijain2607@gmail.com"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen())),
            ),
            ListTile(
                leading: Icon(Icons.view_list),
                title: Text("CATEGORIES"),
                onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => CategoriesScreen()),
                    ))
          ],
        ),
      ),
    );
  }
}
