// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_app/components/cart_item.dart';
import 'package:sneaker_app/models/cart.dart';
import 'package:sneaker_app/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'My Cart',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),

            // the cart items
            Expanded(
              child: ListView.builder(
                  itemCount: value.getShoeCart().length,
                  itemBuilder: (context, index) {
                    // get individual shoe
                    Shoe individualShoe = value.getShoeCart()[index];

                    // return the cart item
                    return CartItem(shoe: individualShoe);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
