import 'package:flutter/material.dart';

import '../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutLineButton(icon : Icons.remove),
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          child: Text("01", style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),),
        ),
        buildOutLineButton(icon : Icons.add),
      ],
    );
  }

  Widget buildOutLineButton({required IconData icon}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: const EdgeInsets.only(top: 0, bottom: 0, right: 5, left: 5),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),

            ),

            onPressed: (){}, child: Icon(icon, color: kTextColor,) )
    );
  }
}
