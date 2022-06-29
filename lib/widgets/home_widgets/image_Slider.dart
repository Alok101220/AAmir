import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter__catalog/pages/items_Page.dart';
import 'package:flutter__catalog/widgets/home_widgets/catalog_list.dart';
import 'package:flutter__catalog/widgets/themes.dart';

class ImageSlider extends StatefulWidget {
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final List<String> imageList = [
    "https://i.pinimg.com/564x/51/05/b1/5105b1547fd3e242b068552c25a4e642.jpg",
    'https://m-cdn.phonearena.com/images/article/138154-wide-two_350/Google-seeks-to-take-the-Pixel-7-cameras-to-a-new-level-with-this-news.jpg?1645216102',
    'https://storage-asset.msi.com/global/image/Reseller/nb/Raider-GE76-12U/Raider%20GE76-streaming.jpg',
    'https://bizweb.dktcdn.net/100/362/971/products/an515-55-des-8-584b78a8-84fc-49b4-a0af-62403632db58.jpg?v=1612267581980'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
          itemCount: imageList.length,
          options: CarouselOptions(
            enlargeCenterPage: true,
            height: 150,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            reverse: false,
            aspectRatio: 5.0,
          ),
          itemBuilder: (context, i, id) {
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: MyTheme.creamColor)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imageList[i],
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ItemsPage()));
              },
            );
          }),
    );
  }
}
