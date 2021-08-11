import 'package:flutter/material.dart';
import 'package:shop_app_ui/details/details.dart';
import 'package:shop_app_ui/models/product.dart';

import '../constants.dart';
class ItemCard extends StatelessWidget {
  final Product product;
  ItemCard(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new DetailScreen(product) ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),

              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(product.image),
              //child: ,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title,
              style:
              TextStyle(color: kTextLightColor, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}