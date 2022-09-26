import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter__catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class SelectByCategory extends StatefulWidget {
  const SelectByCategory({super.key});

  @override
  State<SelectByCategory> createState() => _SelectByCategoryState();
}

class _SelectByCategoryState extends State<SelectByCategory> {
  final List<String> imageList = [
    'https://cdn.mobilesyrup.com/wp-content/uploads/2020/12/all-the-phones-wm.jpg',
    'https://png.pngtree.com/png-vector/20190120/ourlarge/pngtree-isometric-electronic-devices-collection-png-image_324124.jpg',
    'https://media.pitchfork.com/photos/60c2315c28fd170dc6ddd146/2:1/w_2560%2Cc_limit/earbudheader.png',
    'https://pyxis.nymag.com/v1/imgs/cbf/4a2/ec7456fedf57d61fc8e52cb51c3acb47dd-video-game-consoles-for-you-lede.2x.rsocial.w600.jpg',
    'https://www.pinkvilla.com/imageresize/electronic-accessories.jpeg?width=752&format=webp&t=pvorg'

  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          Container(
            color: context.canvasColor,
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                
                Column(
                  children: [
                    ClipOval(
                      child: Image.network(
                        imageList[0],
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Phones",
                      style: TextStyle(color: MyTheme.creamColor),
                    )
                  ],
                ).px(8),
                Column(
                  children: [
                    ClipOval(
                      child: Image.network(
                        imageList[1],
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Laptops",
                      style: TextStyle(color: MyTheme.creamColor),
                    )
                  ],
                ).px(8),
                Column(
                  children: [
                    ClipOval(
                      child: Image.network(
                        imageList[2],
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Earphones",
                      style: TextStyle(color: MyTheme.creamColor),
                    )
                  ],
                ).px(8),
                Column(
                  children: [
                    ClipOval(
                      child: Image.network(
                        imageList[3],
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Gaming",
                      style: TextStyle(color: MyTheme.creamColor),
                    )
                  ],
                ).px(8),
                Column(
                  children: [
                    ClipOval(
                      child: Image.network(
                        imageList[4],
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Accessories",
                      style: TextStyle(color: MyTheme.creamColor),
                    )
                  ],
                ).px(8),
              ] 
            ))
            ]));
                
  }
}
