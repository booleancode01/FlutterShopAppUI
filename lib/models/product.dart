import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(this.id, this.title, this.price, this.size, this.description,
      this.image, this.color);
}

List<Product> products = [
  Product(1, "Office Code", 123, 12, dummyText,
      "assets/images/bag_1.png", Color(0XFF3D82AE)),
  Product(2, "Belt Bag", 234, 8, dummyText, "assets/images/bag_2.png",
      Color(0xFFD3A984)),
  Product(3, "Hang Top", 234, 10, dummyText, "assets/images/bag_3.png",
      Color(0xFF989493)),
  Product(4, "Old Fashion", 234, 11, dummyText, "assets/images/bag_4.png",
      Color(0xFFE6B398)),
  Product(5, "Office Code", 234, 12, dummyText, "assets/images/bag_5.png",
      Color(0xFFFB7883)),
  Product(6, "Office Code", 234, 12, dummyText, "assets/images/bag_6.png",
      Color(0xFFAEAEAE)),
];

String dummyText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";
