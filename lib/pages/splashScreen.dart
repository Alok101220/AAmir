// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:core';

import 'package:flutter__catalog/Auth/page.dart';
import 'package:flutter/material.dart';


import 'package:velocity_x/velocity_x.dart';

// late Future<Status> getStatus;

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final string = "We welcome you";
  final url = "https://goquotes-api.herokuapp.com/api/v1/random?count=1";
  @override
  void initState() {
    super.initState();
    // getStatus = fetchStatus();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => PageHome())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        backgroundColor: context.cardColor,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
           children: [
            TweenAnimationBuilder<int>(
              builder: (BuildContext context, int value, Widget? child) {
                return "${string.substring(0, value)}\_"
                    .text
                    .xl4
                    .bold
                    .color(context.accentColor)
                    .make();
              },
              duration: Duration(seconds: 1),
              tween: IntTween(begin: 0, end: string.length),
            ),
          ]),
        ));
  }
}

