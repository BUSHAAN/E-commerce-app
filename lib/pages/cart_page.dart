// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.background),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Shop Page",
          style: TextStyle(color: Theme.of(context).colorScheme.background),
        ),
      ),
      
      body: Center(
          child: Text("Cart Page",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ))),
    );
  }
}