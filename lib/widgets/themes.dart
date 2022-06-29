import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  // ignore: non_constant_identifier_names
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.purple,
       cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: darkBluish,
      accentColor: darkBluish,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.black),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme,
      )
      // primaryTextTheme:GoogleFonts.latoTextTheme()
      );
  // ignore: non_constant_identifier_names
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamcolor,
      buttonColor: lightdarkbluish,
      accentColor: Vx.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.white),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme.
        copyWith(headline6: context.textTheme.headline6?.copyWith(color: Colors.white)),
      ));

// colors

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamcolor = Vx.gray900;
  static Color darkBluish = Color(0xff403b58);
  static Color lightdarkbluish = Vx.indigo500;
}
