import 'package:flutter/material.dart';
import 'components/FoodCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Menu Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Food Menu', 
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          titleSpacing: 30,
          title: Text(title,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal[700],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          )
        ),
        body: ListView(
            shrinkWrap: true,
            children: const [
              FoodCard(foodName: 'hamburger', foodDescription: 'hamburger description'),
              FoodCard(foodName: 'hamburger', foodDescription: 'hamburger description'),
              FoodCard(foodName: 'hamburger', foodDescription: 'hamburger description'),
              FoodCard(foodName: 'hamburger', foodDescription: 'hamburger description'),
            ],
          ),
      ),
    );
  }
}


