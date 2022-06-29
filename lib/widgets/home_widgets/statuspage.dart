import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter__catalog/models/status.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class BottomContainer extends StatefulWidget {
  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  List<Temp> _list = [];
  late Future<Temp> fetchdata;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final jsonFile = await http.get(Uri.parse(url));
    final decodeJson = json.decode(jsonFile.body);
    var decodedJsonFile = decodeJson["quotes"];
    _list = List.from(decodedJsonFile)
        .map<Temp>((item) => Temp.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 300),
      height: 200,
      width: 400,
      color: context.cardColor,
      child: Card(
          color: context.canvasColor,
          shadowColor: context.accentColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          // ignore: sort_child_properties_last
          child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: _list.length,
              itemBuilder: (context, index) {
                final element = _list[index];
                return InkWell(
                    child: Center(
                  child: Column(
                    children: [
                      Text("\" ${element.text} \"",
                              style: TextStyle(
                                  color: MyTheme.creamColor,
                                  fontSize: 15,
                                  letterSpacing: 3,
                                  wordSpacing: 5))
                          .centered(),
                      Text("- ${element.author}").py16().px64()
                    ],
                  ),
                ));
              }).centered()),
    );
  }
}
