import 'package:flutter/material.dart';

import 'product.dart';

class Shop extends ChangeNotifier {
  //product for sales
  final List<Product> _shop = [
    //product 1
    Product(
        name: "Comfort Black Hoodie",
        description:
            "Made with soft and breathable material, it's perfect for layering up or lounging around." ,
        price: 99.99,
        image: "assets/hoodie.png"),
    Product(
        name: "Black Stainless Steel Watch",
        description: "Featuring a sleek minimalist design, a scratch-resistant crystal, and luminous hands.",
        price: 59.99,
        image: "assets/watch.png"),
    Product(
        name: "Energize Running Shoes",
        description: "Features a breathable mesh upper, a responsive cushioned sole, and a supportive fit.",
        price: 49.99,
        image: "assets/shoe.png"),
    Product(
        name: "Navigator black Mirrored Sunglasses",
        description: "The classic aviator frame in a cool blue shade complements any outfit.",
        price: 29.99,
        image: "assets/sunglasses.png"),
  ];
  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  //get total price
  double get totalPrice => _cart.fold(0, (total, current) => total + current.price);
}
