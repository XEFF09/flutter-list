import 'package:flutter/material.dart';
import 'package:week3/main.dart';
import '../FoodMenu.dart';

import 'package:provider/provider.dart';

class FoodCardLg extends StatelessWidget {
  final FoodMenu foodMenu;
  final Function(int index, FoodMenu currFood) onChangePage;

  const FoodCardLg(
      {super.key, required this.foodMenu, required this.onChangePage});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      onPressed: () {
        onChangePage(1, foodMenu);
      },
      child: Card(
        elevation: 10,
        color: Colors.blueGrey[200],
        margin: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8.0),
                  ),
                  child: Image.asset(
                    'assets/images/${foodMenu.foodImage}',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                ListTile(
                  title: Text(
                    foodMenu.foodName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(foodMenu.foodDescription),
                ),
              ],
            ),
            Positioned(
              right: 10,
              top: 10,
              child: ClipOval(
                child: Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () => {
                      context.read<CounterModel>().increment(),
                      context.read<CounterModel>().addFood(foodMenu),
                    },
                    child: const SizedBox(
                      width: 40,
                      height: 40,
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
