import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ui/models/product.dart';
import 'package:shop_app_ui/details/body.dart';
import '../constants.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  DetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: product.color,
      leading: IconButton(onPressed: ()=> Navigator.pop(context), icon: SvgPicture.asset("assets/icons/back.svg", color: Colors.white)),
      actions: <Widget>[
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/search.svg",  color: Colors.white)),
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/cart.svg", color: Colors.white)),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
