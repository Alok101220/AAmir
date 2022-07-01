import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter__catalog/pages/cart_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';

class NavigationClass extends StatefulWidget {
  @override
  State<NavigationClass> createState() => _NavigationClassState();
}

class _NavigationClassState extends State<NavigationClass> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: context.cardColor,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: "Username".text.color(context.accentColor).make().px16(),
                accountEmail: null,
                decoration: BoxDecoration(color: context.cardColor),
                margin: EdgeInsets.all(0),
                currentAccountPicture: Image.network(
                    "https://www.icmetl.org/wp-content/uploads/2020/11/user-icon-human-person-sign-vector-10206693.png"),
              ),
            ).px(0),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: "Home".text.make(),
              onTap: ()=>Navigator.pushNamed(context, MyRoutes.homeRoute),
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/booking.png",
                color: context.accentColor,
                height: 27,
              ),
              title: "My Orders".text.make(),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.cart),
              title: "My Cart".text.make(),
              onTap: ()=> Navigator.pushNamed(context, MyRoutes.cartRoute),
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
            )
          ],
        ),
      ),
    );
  }
}
