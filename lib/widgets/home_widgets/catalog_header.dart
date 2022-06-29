import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';



class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Padding(padding: EdgeInsets.all(0)),
        "Ecommerce App".text.xl4.bold.color(context.theme.accentColor).make(),
      ],
    );
  }
}
