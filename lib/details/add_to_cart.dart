import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ui/models/product.dart';

import '../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding / 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                border: Border.all(color: product.color)),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: product.color,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  primary: product.color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18), // <-- Radius
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
