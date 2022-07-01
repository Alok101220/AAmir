// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:flutter__catalog/models/status.dart';
import 'package:flutter__catalog/widgets/home_widgets/image_Slider.dart';
import 'package:flutter__catalog/widgets/home_widgets/statuspage.dart';
import 'package:flutter__catalog/widgets/themes.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter__catalog/pages/home_page.dart';


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
            context, MaterialPageRoute(builder: (context) => HomePage())));
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
            BottomContainer(),
          ]),
        ));
  }
}

