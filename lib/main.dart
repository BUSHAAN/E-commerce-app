// ignore_for_file: prefer_const_constructors, use_super_parameters
import 'package:e_commerce_app/models/shop.dart';
import 'package:e_commerce_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/cart_page.dart';
import 'pages/intro_page.dart';
import 'pages/shop_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Shop(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        "/intro_page": (context) => IntroPage(),
        "/shop_page": (context) => ShopPage(),
        "/cart_page": (context) => CartPage(),
      },
    );
  }
}
