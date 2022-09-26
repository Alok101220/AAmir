// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter__catalog/Auth/signInScreesn.dart';
// import 'package:flutter__catalog/Auth/signInScreesn.dart';
import 'package:flutter__catalog/pages/home_page.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasData) {
                return HomePage();
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('Something Went Wrong'),
                );
              } else {
                return SignInScreen();
              }
            }),
      );
}
