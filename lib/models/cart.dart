import 'package:flutter/material.dart';
import 'package:sneaker_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      shoeName: 'Air Jordan 1',
      price: '236',
      imagePath:
          'lib/images/AIR JORDAN 1 RETRO HIGH OG BLACKUNIVERSITY RED-WHITE.png',
      description: 'RETRO HIGH OG BLACKUNIVERSITY',
    ),
    Shoe(
      shoeName: 'Samba OG',
      price: '199',
      imagePath: 'lib/images/SAMBA OG CLOUD WHITECORE BLACK-CLEAR GRANITE.png',
      description: 'CLOUD WHITECORE BLACK-CLEAR GRANITE',
    ),
    Shoe(
      shoeName: 'Gel Quantum 360',
      price: '180',
      imagePath: 'lib/images/GEL QUANTUM 360 VIII BLACKAQUARIUM.png',
      description: 'GEL QUANTUM 360 VIII BLACKAQUARIUM',
    ),
    Shoe(
      shoeName: 'Air Jordan 13',
      price: '299',
      imagePath: 'lib/images/AIR JORDAN 13 RETRO WHITETRUE RED-WOLF GREY.png',
      description: 'RETRO WHITETRUE RED-WOLF GREY',
    ),
    Shoe(
      shoeName: 'Chuck 70',
      price: '149',
      imagePath: 'lib/images/CHUCK 70 HIGH BLACKEGRET-THUNDER DAZE.png',
      description: 'HIGH BLACKEGRET-THUNDER DAZE',
    ),
    Shoe(
      shoeName: 'Air Force 1',
      price: '189',
      imagePath:
          'lib/images/AIR FORCE 1 HIGH 07 LX BLACKWHITE-BEACH-SMOKE GREY.png',
      description: 'HIGH 07 LX BLACKWHITE-BEACH-SMOKE GREY',
    ),
  ];

  // list of items in user cart
  List<Shoe> shoeCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getShoeCart() {
    return shoeCart;
  }

  // add items to cart
  void addtoCart(Shoe shu) {
    shoeCart.add(shu);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Shoe shu) {
    shoeCart.remove(shu);
    notifyListeners();
  }
}
