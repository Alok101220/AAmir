// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter__catalog/core/store.dart';
import 'package:flutter__catalog/menuPage/navigation_Drawer.dart';
import 'package:flutter__catalog/models/cart.dart';
import 'package:flutter__catalog/models/catalog.dart';
import 'package:flutter__catalog/utils/routes.dart';
import 'package:flutter__catalog/widgets/home_widgets/image_Slider.dart';
import 'package:flutter__catalog/widgets/home_widgets/search_icon.dart';
import 'package:flutter__catalog/widgets/home_widgets/select_By_Category.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed((Duration(seconds: 2)));
    var catalogJson = await rootBundle.loadString("assets/files/Catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        // ignore: unnecessary_this
        .map<Item>((item) => Item.fromMap(item))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        // ignore: deprecated_member_use
        backgroundColor: context.theme.buttonColor,
        child: Icon(
          CupertinoIcons.cart,
          color: Colors.white,
        ),
      ).badge(color: Vx.red500, size: 20, count: _cart.items.length),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
                backgroundColor: context.canvasColor,
                snap: false,
                floating: false,
                pinned: true,
                elevation: 5,
                shadowColor: context.accentColor,
                title: CatalogHeader(),
                expandedHeight: 175,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                actions: [
                  Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          showSearch(
                              context: context, delegate: MySearchDelegate());
                        },
                        child: Icon(
                          Icons.search,
                          size: 26.0,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {
                         
                        },
                        child: Icon(Icons.notifications_none_outlined),
                      )),
                ],
                flexibleSpace: Container(
                  padding: EdgeInsets.only(top: 110),
                  color: context.canvasColor,
                  child: SelectByCategory(),
                ))
          ];
        },
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.zero,
            padding: Vx.m8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Trending Products".text.lg.make(),
                ImageSlider(),
                "Products".text.xl2.make(),
                if (CatalogModel.items != null &&
                    CatalogModel.items!.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ),
      ),

      drawer: NavigationClass(),
      // ),
    );
  }
}
