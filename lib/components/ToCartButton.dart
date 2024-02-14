import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week3/FoodMenu.dart';
import '../main.dart';

class ToCartButton extends StatelessWidget {

  final FoodMenu foodMenu;

  const ToCartButton({
    super.key,
    required this.foodMenu,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {
        context.read<CounterModel>().increment(),
        context.read<CounterModel>().addFood(foodMenu),
      },
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
    );
  }
}