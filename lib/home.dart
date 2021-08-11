
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/components/body.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/back.svg")),
      actions: <Widget>[
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/search.svg",  color: kTextColor)),
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/cart.svg", color: kTextColor)),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );

  }
}