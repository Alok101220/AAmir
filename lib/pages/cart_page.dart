import 'package:flutter/material.dart';
import 'package:flutter__catalog/core/store.dart';
import 'package:flutter__catalog/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          CartList().p32().expand(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children: [ 
        "\$${_cart.totalPrice}"
            .text
            .xl4
            .color(context.theme.accentColor)
            .make(),
        30.widthBox,
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: "Buying not supported yet!".text.make()));
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(context.theme.buttonColor)),
          child: "Buy".text.white.make(),
        ).w32(context),
      ]),
    );
  }
}

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    // TODO: implement build
    return _cart.items.isEmpty
        ? "Nothing in cart".text.xl3.bold.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () => RemoveMutation(_cart.items[index]),
              ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
