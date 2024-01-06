import 'package:flutter/material.dart';
import 'components/FoodCard.dart';
import 'components/NavTab.dart';
import 'components/SearchBarApp.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
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
          toolbarHeight: 100,
          title: Container(
            child: Column(
              children: [
                Text(title,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NavTab(tabName: 'tab1', selected: true,),
                    NavTab(tabName: 'tab2'),
                    NavTab(tabName: 'tab3'),
                    NavTab(tabName: 'tab4'),
                  ],
                ),
              ],
            ),
          ),
          backgroundColor: Colors.teal[700],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Container(
          color: Colors.teal[100],
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  crossAxisCount: 1,
                  children: [
                    Stack(
                      children: [
                        const SearchBarApp(),
                        Transform.translate(offset: const Offset(0, 70), 
                          child: const FoodCard(
                            foodName: 'fried_chicken', 
                            foodDescription: 'a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried',
                            foodImage: 'fried_chicken.jpg',
                          ).lgCard(context),
                        )
                      ],
                    ),
                    
                    Container(
                      margin: const EdgeInsets.only(top: 90),
                      child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      children: List<Widget>.generate(10, (i) => 
                        const FoodCard(
                          foodName: 'somtum', 
                          foodDescription: "a Thai papaya salad. Don't confuse Thai salads with the boring leafy salads the rest of the world enjoys.",
                          foodImage: 'somtum.jpg',
                        ).smCard(context),
                      )
                    )
                    )
                  ]
                )
              )
            ],
          ),
        )
      )
    );
  }
}


