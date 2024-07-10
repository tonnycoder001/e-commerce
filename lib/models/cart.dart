import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
// list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'air_zoom',
      price: '345',
      description: 'Fly like an eagle',
      imagePath: 'lib/images/air_zoom.png',
    ),
    Shoe(
      name: 'Sprinter',
      price: '365',
      description: 'Run faster',
      imagePath: 'lib/images/road.png',
    ),
    Shoe(
      name: 'Tn',
      price: '895',
      description: 'All wear',
      imagePath: 'lib/images/tn.png',
    ),
    Shoe(
      name: 'air_zoom',
      price: '690',
      description: 'Fly further',
      imagePath: 'lib/images/air_zoom.png',
    ),
  ];
// list of items in user cart
  List<Shoe> userCart = [];
// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

// add items to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove items from cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  void addItemToCart(Shoe shoe) {}
}
