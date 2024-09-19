import 'package:flutter/material.dart';
import 'package:food/models/shoe.dart';

class Cart extends ChangeNotifier{

  //list of shoes
  List<Shoe> shoeShop = [
    Shoe(
    name: "Nike Dunk Low Retro", 
    price: "249", 
    description: "Available\nClick to view",
    imagePath: 'lib/images/nikeshoe1.png'
    ),

    Shoe(
    name: "Nike Dunk Graffiti",
    price: "167", 
    imagePath: 'lib/images/nikeshoe2.png', 
    description: "Available\nClick to View"
    ),

    Shoe(
    name: "Air Jordan Legacy", 
    price: "108", 
    description: "Out of Stock\n",
    imagePath: 'lib/images/nikeshoe4.png'
    ),

    Shoe(
    name: "Nike Zoom Freak 2", 
    price: "99", 
    description: "Available\nClick to view",
    imagePath: 'lib/images/nikeshoe3.png'
    ),
  ];


  //items list in cart
  List<Shoe> userCart = [];

  //list fo shoes for sale
  List<Shoe> getShoeList () {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart () {
    return userCart;
  }

  //add items to cart
  void addITemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}