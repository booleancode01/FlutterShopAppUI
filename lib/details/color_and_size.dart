import 'package:flutter/material.dart';
import 'package:shop_app_ui/models/product.dart';

import '../constants.dart';
import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Colors"),
              Row(
                children: <Widget>[
                  ColorDot(const Color(0XFF356C95), isSelected: true),
                  ColorDot(const Color(0XFFF8C078)),
                  ColorDot(const Color(0XFFA29B9B)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: kTextColor),
                  children: [
                const TextSpan(text: "Size\n"),
                TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold)),
              ])),
        )
      ],
    );
  }
}
