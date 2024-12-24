import 'package:e_commerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        imagePath: 'lib/images/all_white.png',
        description:
            'The forward-thinking design of his latest signature shoe'),
    Shoe(
        name: "Red&White J's",
        price: '220',
        imagePath: 'lib/images/red_white.jpg',
        description: 'You got the hops and the speed-lace up in shoes that enhances performance'),
    Shoe(
        name: 'Black AirJordans',
        price: '240',
        imagePath: 'lib/images/black_air.jpeg',
        description: 'A secure midfoot strap is suited for scoring binges and defensive plays'),
    Shoe(
        name: 'Pinky Jordan',
        price: '190',
        imagePath: 'lib/images/pink.jpg',
        description: 'Bouncy cushioning Supportive shoe')
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeLIst() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
