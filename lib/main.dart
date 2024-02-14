import 'package:flutter/material.dart';
import 'package:week3/FoodMenu.dart';
import 'components/NavTab.dart';

import 'package:provider/provider.dart';

class CounterModel with ChangeNotifier {
  int _count = 0;
  List<FoodMenu> selectedFood = [];
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void addFood(FoodMenu food) {
    for (var item in selectedFood) {
      if (item.foodName == food.foodName) {
        item.quantity += 1;
        return;
      }
    }
    selectedFood.add(food);
    notifyListeners();
  }

  void removeFood(FoodMenu food) {
    food.quantity -= 1;
    if (food.quantity == 0) {
      selectedFood.remove(food);
    }
    notifyListeners();
  }

  void decrement() {
    _count--;
    if (_count < 0) {
      _count = 0;
    }
    notifyListeners();
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(
        title: 'Food Menu Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        home: const MyHomePage(
          title: 'Food Menu',
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const NavTab(),
    );
  }
}
