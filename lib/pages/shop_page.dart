// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/components/my_drawer.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

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
      drawer: MyDrawer(),
      body: Center(
          child: Text("Shop Page",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ))),
    );
  }
}
