import 'package:flutter/material.dart';
import 'package:week3/FoodMenu.dart';

class FoodCardSm extends StatelessWidget {

  final FoodMenu foodMenu;
  final Function(int index, FoodMenu currMenu) onChangePage;

  const FoodCardSm({
    super.key,
    required this.foodMenu,
    required this.onChangePage
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        onChangePage(1, foodMenu);
      },
      backgroundColor: Colors.white,
      child: Card(
      color: Colors.blueGrey[400],
      elevation: 10,
      margin: const EdgeInsets.all(10.0),
      child: Column(
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                Expanded(
                  child: ButtonBar(
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          minimumSize: const Size(250, 0),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                          ),
                        ),
                        child: const Text('ADD TO CART +'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}