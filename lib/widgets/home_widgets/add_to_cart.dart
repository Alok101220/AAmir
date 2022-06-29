import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter__catalog/core/store.dart';
import 'package:flutter__catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    super.key,
    required this.catalog,
  });
  @override
  Widget build(BuildContext context) {
    MyStore store = VxState.store as MyStore;
    final CartModel _cart = store.cart;
    VxState.watch(context, on: [AddMutation,RemoveMutation]);
    bool isAdded = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isAdded) {
          AddMutation(catalog);
          // setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isAdded ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
