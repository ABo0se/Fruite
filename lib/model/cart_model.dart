import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [
    //[ itemName, itemPrice, imagePath, color ]
    ["Green Apple", "3", "images/Apple.png", Colors.green,],
    ["Avocado", "5", "images/Avocado.png", Colors.yellow],
    ["Carrot", "2", "images/Carrot.png", Colors.brown],
    ["Grape", "10", "images/Grape.png", Colors.blue],
    ["Orange", "4", "images/Orange.png", Colors.green],
    ["Paer", "3", "images/Pear.png", Colors.yellow],
    ["Pumpkin", "8", "images/Pumpkin.png", Colors.brown],
    ["Corn", "2", "images/Sweetcon.png", Colors.blue],
  ];


// list of cart items
List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add item to cart
  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item form cart
void removeItemFromCart(int index){
  _cartItems.removeAt(index);
  notifyListeners();
}

  // calculate total price
  String calculateTotal(){
    double totalPrice = 0;
    for (int i=0; i<_cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}