import 'package:flutter/material.dart';
import 'package:flutter__catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
  :assert(catalog !=null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.bold.xl3.red800.make(),
            AddToCart(catalog: catalog,).wh(120, 50)
          ],
        )
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
          Hero(
            tag: Key(catalog.id.toString()),
          child: Image.network(catalog.image)
          ).h32(context),
          Expanded(
            child: VxArc(
            height: 30.0,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container( 
              color: context.cardColor,
              width: context.screenWidth,
              child: Column(
                children: [
                  catalog.name.text.bold.xl4.color(context.accentColor).make(),
                  catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                  10.heightBox,
                  "Et at gubergren diam et ipsum clita est clita diam et, erat takimata magna sea sit voluptua stet, tempor amet sadipscing eirmod justo takimata, nonumy elitr dolore gubergren sed sanctus, stet dolore sanctus stet elitr. At dolor est kasd sit sanctus. No lorem takimata dolores sea, kasd tempor aliquyam justo."
                  .text
                  .textStyle(context.captionStyle)
                  .make().p16(),
                ],
              ).py64(),
            ),
          ))
        ]
        ).centered(),
      ),
    );
  }
}
