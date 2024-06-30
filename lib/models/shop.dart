import 'package:flutter/material.dart';

import 'product.dart';

class Shop extends ChangeNotifier{
  //product for sales
  final List<Product> _shop=[
    //product 1
    Product(
      name: "Product 1",
      description: "This is product 1",
      price: 99.99,
      //image: "assets/images/product1.jpg"
    ),Product(
      name: "Product 2",
      description: "This is product 2",
      price: 59.99,
      //image: "assets/images/product1.jpg"
    ),Product(
      name: "Product 3",
      description: "This is product 3",
      price: 129.99,
      //image: "assets/images/product1.jpg"
    ),Product(
      name: "Product 4",
      description: "This is product 4",
      price: 999.99,
      //image: "assets/images/product1.jpg"
    ),
  ];
  //user cart
  List<Product> _cart=[];

  //get product list
  List<Product> get shop=>_shop;

  //get user cart
  List<Product> get cart=>_cart;

  //add item to cart
  void addToCart(Product product){
    _cart.add(product);
  }

  //remove item from cart
  void removeFromCart(Product product){
    _cart.remove(product);
  }
}