// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter__catalog/Auth/signInScreesn.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class NavigationClass extends StatefulWidget {
  @override
  State<NavigationClass> createState() => _NavigationClassState();
}

class _NavigationClassState extends State<NavigationClass> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  //signout function
  //  signOut() async {
  //   await googleSignIn.disconnect();
  //   FirebaseAuth.instance.signOut();
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => SignInScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    String? photo = user.photoURL;
    return Drawer(
      child: Container(
        color: context.cardColor,
        child: ListView(
          children: [
            DrawerHeader(
              
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: user.displayName!.text
                    .color(context.accentColor)
                    .make()
                    .px16(),
                accountEmail: null,
                decoration: BoxDecoration(color: context.cardColor),
      
                margin: EdgeInsets.all(0),
                currentAccountPicture: ClipOval(
                  child: Image.network(
                    photo!,
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
            ).px(0),
            ListTile(
        
              leading: Icon(CupertinoIcons.home),
              title: "Home".text.make(),
              onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
            ),
            ListTile(
              leading:
                  // CircleAvatar(radius: 40,
                  // backgroundColor: NetworkImage()),

                  Image.asset(
                "assets/images/booking.png",
                color: context.accentColor,
                height: 27,
              ),
              title: "My Orders".text.make(),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.cart),
              title: "My Cart".text.make(),
              onTap: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.heart),
              title: "My WishList".text.make(),
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: "My Reward".text.make(),
            ),
            PopupMenuDivider().py(10),
            ListTile(
              title: "Help Center".text.make(),
            ),
            ListTile(
              title: Text("Privacy Policy"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              // onTap: signOut(),
            ),
          ],
        ),
      ),
    );
  }
}
