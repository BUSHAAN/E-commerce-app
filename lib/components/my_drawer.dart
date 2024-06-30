// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_commerce_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //drawer header
          Column(
            children: [
              SizedBox(
                height: 200,
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 100,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //shop tile
              MyListTile(
                  title: "Shop",
                  icon: Icons.home,
                  onTap: () {
                    Navigator.pop(context);
                  }),
              //cart tile
              MyListTile(
                  title: "Cart", icon: Icons.shopping_cart, onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/cart_page');
                    
                  }),
            ],
          ),
          //exit tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(title: "Exit", icon: Icons.logout, onTap: () {
              Navigator.pop(context);
                    Navigator.pushNamedAndRemoveUntil(context, '/intro_page',(route)=>false);
            }),
          ),
        ],
      ),
    );
  }
}
