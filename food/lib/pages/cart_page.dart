import 'package:flutter/material.dart';
import 'package:food/components/cart_item.dart';
import 'package:food/models/cart.dart';
import 'package:food/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            //heading
            const Text("My Cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            ),

            const SizedBox(height: 25,),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Shoe individualShoe = value.getUserCart()[index];

                  return CartItem(shoe: individualShoe,);
                }
                ) 
            ),
          ],
        ),
      )
      );
  }
}