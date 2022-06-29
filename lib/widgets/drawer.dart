// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final imageUrl =
        "https://media-exp2.licdn.com/dms/image/C5603AQHQGm13po3pRw/profile-displayphoto-shrink_800_800/0/1648489815894?e=1660780800&v=beta&t=waDOE_7kpv8QAS9HIsFR-LpgPLEFRTdxjA7VExQ05QM";
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Container(
        color: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
            accountName: Text("Alok Singh"),
            accountEmail: Text("xyz@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            )
          )),
          ListTile(
            leading: Icon(CupertinoIcons.home,
            color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
              ),
          ),
          ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Mail",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
        ],
      ),
    
    ));
  }
}
