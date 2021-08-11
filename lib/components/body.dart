import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/product.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,
          gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.75, mainAxisSpacing: kDefaultPadding, crossAxisSpacing: kDefaultPadding),
          itemBuilder: (BuildContext context, int index) => ItemCard(products[index]),
        ),
            ))
      ],
    );
  }
}


