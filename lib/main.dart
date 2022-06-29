import 'package:flutter/material.dart';
import 'package:flutter__catalog/core/store.dart';
import 'package:flutter__catalog/pages/cart_page.dart';
import 'package:flutter__catalog/pages/home_page.dart';
import 'package:flutter__catalog/pages/login_page.dart';
import 'package:flutter__catalog/pages/sliver_App_Bar.dart';
import 'package:flutter__catalog/pages/splashScreen.dart';
import 'package:flutter__catalog/utils/routes.dart';
import 'package:flutter__catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(
      store: MyStore(),
      // ignore: prefer_const_constructors
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.cartRoute:(context)=>CartPage(),
        MyRoutes.splashRout:(context)=>MyHomePage(),
        MyRoutes.sliverRoute:(context)=>SliverBar()
      },
    );
  }
}
