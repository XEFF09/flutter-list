import 'package:flutter/material.dart';
import 'package:week3/FoodMenu.dart';
import 'package:week3/components/ToCartButton.dart';

class Page2 extends StatelessWidget {
  final FoodMenu foodMenu;

  const Page2({
    super.key,
    required this.foodMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.blueGrey[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(8.0),
            ),
            child: Image.asset(
              'assets/images/${foodMenu.foodImage}',
              fit: BoxFit.cover,
              height: 110,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              foodMenu.foodName,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
            height: 1,
            indent: 10,
            endIndent: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              foodMenu.foodDescription,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
            height: 1,
            indent: 10,
            endIndent: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '\$${foodMenu.foodCost}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
          ToCartButton(
            foodMenu: foodMenu,
          ),
        ],
      ),
    ));
  }
}
