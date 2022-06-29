import 'package:flutter/material.dart';
import 'package:flutter__catalog/pages/home_detail_page.dart';
import 'package:flutter__catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter__catalog/widgets/home_widgets/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../../widgets/themes.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Vx.isWeb?GridView.builder(
      gridDelegate: 
      SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 3),
        shrinkWrap: true,
        itemCount: CatalogModel.items!.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items![index];
          return InkWell(
            child: CatalogItem(catalog: catalog),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog))),
          );
        }):ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items!.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items![index];
          return InkWell(
            child: CatalogItem(catalog: catalog),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog))),
          );
        });;
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return VxBox(
      child: Row(
        children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: catalogImage(image: catalog.image)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.bold.lg.color(context.accentColor).make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  AddToCart(catalog: catalog),
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).color(context.cardColor).roundedLg.square(150).make().py16();
  }
}

