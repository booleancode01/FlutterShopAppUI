import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ui/details/product_title_with_image.dart';
import 'package:shop_app_ui/models/product.dart';

import '../constants.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'color_dot.dart';
import 'counter_with_fav_button.dart';
import 'counter_with_favourite.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  Body(this.product);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: size.height * 0.12, left: kDefaultPadding, right: kDefaultPadding),
                margin: EdgeInsets.only(top: size.height * 0.33),
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: <Widget>[
                    ColorAndSize(product: product),
                    Description(product: product),
                    const CounterWithFavButton(),
                    AddToCart(product: product)

                  ],
                ),
              ),
              ProductTitleWithImage(product: product),
            ],
          )
        ],
      ),
    );
  }
}
