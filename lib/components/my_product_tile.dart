// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //image
        Icon(Icons.image),
        //title
        Text(product.name, style: TextStyle(fontSize: 20)),
        //description
        Text(product.description, style: TextStyle(fontSize: 10)),
        //price + button to add to cart
        Text(product.price.toStringAsFixed(2), style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
