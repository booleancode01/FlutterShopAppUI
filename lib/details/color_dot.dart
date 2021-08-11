import 'package:flutter/material.dart';
import 'package:shop_app_ui/models/product.dart';

import '../constants.dart';

class ColorDot extends StatelessWidget {

  final Color color;
  final bool isSelected;
  ColorDot(this.color, {this.isSelected : false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 4,
          right: kDefaultPadding / 2
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)
      ),
      child: DecoratedBox(decoration: BoxDecoration(
          color: this.color,
          shape: BoxShape.circle
      )),

    );
  }
}