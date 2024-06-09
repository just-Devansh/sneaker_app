// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_app/components/shoe_tile.dart';
import 'package:sneaker_app/models/cart.dart';
import 'package:sneaker_app/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // search bar
          Container(
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Icon(
                  Icons.search_rounded,
                  color: Colors.grey[600],
                ),
              ],
            ),
          ),

          // message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'everyone flies.. some fly longer than others',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),

          // hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                // get a shoe from shop list
                Shoe shoe = value.getShoeList()[index];

                // return the shoe
                return ShoeTile(shoe: shoe);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.grey[100],
            ),
          ),
        ],
      ),
    );
  }
}
