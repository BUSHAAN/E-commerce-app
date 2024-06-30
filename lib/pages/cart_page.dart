// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  void removeItemFromCart(BuildContext context, Product item) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text(
                "Remove this item from your cart?",
                style: TextStyle(
                  fontSize: 17,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              actions: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().removeFromCart(item);
                  },
                  child: Text(
                    "Yes",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ),
              ],
            ));
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Connect to payment backend."),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<Shop>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.inversePrimary),
          backgroundColor: Colors.transparent,
          title: Text(
            "Cart Page",
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
        ),
        body: Column(
          children: [
            //cart List
            Expanded(
              child: shop.cart.isEmpty
                  ? Center(
                      child: Text(
                        "The cart is empty!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        final item = shop.cart[index];
                        return ListTile(
                            title: Text(
                              item.name,
                            ),
                            subtitle: Text(item.price.toStringAsFixed(2)),
                            trailing: IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                removeItemFromCart(context, item);
                              },
                            ));
                      },
                      itemCount: shop.cart.length,
                    ),
            ),
            //pay button
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: MyButton(
                  onTap: () => payButtonPressed(context), text: "Pay Now"),
            )
          ],
        ));
  }
}
