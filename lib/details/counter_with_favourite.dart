import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'counter_with_fav_button.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(

          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        ),
      ],
    );
  }
}