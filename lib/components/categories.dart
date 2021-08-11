import 'package:flutter/material.dart';

import '../constants.dart';


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Container(
          height: 25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildCategory(index))),
    );
  }

  Widget buildCategory(int index) => InkWell(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categories[index],
            style: TextStyle(
                color:
                selectedIndex == index ? kTextColor : kTextLightColor,
                fontWeight: FontWeight.bold),
          ),
          Container(
            height: 2,
            width: 30,
            color:
            selectedIndex == index ? Colors.black : Colors.transparent,
          )
        ],
      ),
    ),
  );
}
