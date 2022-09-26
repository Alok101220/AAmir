// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter__catalog/pages/login_page.dart';
// ignore: unused_import
import 'package:flutter__catalog/pages/splashScreen.dart';
import 'package:flutter__catalog/widgets/home_widgets/catalog_header.dart';
import 'package:velocity_x/velocity_x.dart';

class SliverBar extends StatefulWidget {
  const SliverBar({super.key});

  @override
  State<SliverBar> createState() => _SliverBarState();
}

class _SliverBarState extends State<SliverBar> {
  final String url =
      "https://cdn.shopify.com/s/files/1/0075/3929/4305/files/SummerWedding3_grande.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
          return
          [
            SliverAppBar(
              centerTitle: true,
              backgroundColor: context.accentColor,
              title: CatalogHeader(),
              snap: true,
              pinned: true,
              floating: true,
              expandedHeight: 200,
              // flexibleSpace:LoginPage()
              // FlexibleSpaceBar(
              //   title: "Catalog App".text.color(context.cardColor).make(),
              //   centerTitle: true,
              //   collapseMode: CollapseMode.pin,
              //   background: Image.network(
              //     url,
              //     fit: BoxFit.cover,
              //   ),
              // ),
            ),
          ];
        },
        body: Center(child: Text("Sliver app bar")),
      ),
    );
  }
}
