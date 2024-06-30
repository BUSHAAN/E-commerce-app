// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/components/my_drawer.dart';
import 'package:e_commerce_app/components/my_product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    //accessing the shop products
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.inversePrimary),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          "Shop Page",
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ),
      drawer: MyDrawer(),
      body: ListView.builder(itemBuilder: (context,index){
        final product = products[index];
        return MyProductTile(product: product);
      }, itemCount: products.length),
    );
  }
}
