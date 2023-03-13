import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
   // ["Avocado", "4.00", "assets/images/avocado.png", Colors.green],
   // ["Banana", "2.50", "assets/images/banana.png", Colors.yellow],
    //["Chicken", "12.80", "assets/images/chicken.png", Colors.brown],
    //["Water", "1.00", "assets/images/water.png", Colors.blue],
    ["Purse", "400.00", "assets/images/p5.jpeg", Colors.blue],
    ["Goggles", "100.00", "assets/images/p7.jpeg", Colors.green],
    ["Shoes", "200.00", "assets/images/p6.jpeg", Colors.yellow],
    ["Bellies","500.00","assets/images/p4.jpeg",Colors.yellow],
    ["Laptop", "4000.00", "assets/images/p1.jpeg", Colors.green],
    ["Toy Car", "400.00", "assets/images/fc3.jpeg", Colors.yellow],
    ["Purse", "430.00", "assets/images/p5.jpeg", Colors.blue],
    ["Iphone", "4.00", "assets/images/fc6.jpeg", Colors.brown],
    ["Purse", "4.00", "assets/images/p5.jpeg", Colors.blue],
    ["Goggles", "4.00", "assets/images/p7.jpeg", Colors.green],
    ["Shoes", "4.00", "assets/images/p6.jpeg", Colors.yellow],
    ["Bellies","400.00","assets/images/p4.jpeg",Colors.yellow],
    ["Laptop", "4000.00", "assets/images/p1.jpeg", Colors.green],
    ["Toy Car", "4000.00", "assets/images/fc3.jpeg", Colors.yellow],
    ["Iphone", "4.00", "assets/images/fc6.jpeg", Colors.brown],
    ["Purse", "4.00", "assets/images/p5.jpeg", Colors.blue],
    ["Goggles", "4.00", "assets/images/p7.jpeg", Colors.green],
    ["Shoes", "4.00", "assets/images/p6.jpeg", Colors.yellow],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
