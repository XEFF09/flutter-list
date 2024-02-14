import 'package:flutter/material.dart';
import 'package:week3/main.dart';
import '../pages/HomePage.dart';
import '../pages/Page2.dart';
import '../pages/Page3.dart';
import '../FoodMenu.dart';

import 'package:provider/provider.dart';

class NavTab extends StatefulWidget {
  const NavTab({
    super.key,
  });

  @override
  State<NavTab> createState() => _NavTabState();
}

class _NavTabState extends State<NavTab> {
  int indexTab = 0;
  FoodMenu initFood = FoodMenu(
      foodName: 'fried_chicken',
      foodDescription:
          'a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried',
      foodImage: 'fried_chicken.jpg',
      foodCost: 15);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePage(
          onChangePage: (index, currFood) => setState(() {
                initFood = currFood;
                indexTab = index;
              })),
      Page2(foodMenu: initFood),
      Page3(),
    ];

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: Consumer<CounterModel>(
              builder: (context, model, child) {
                return Center(
                    child: Stack(
                  children: [
                    const Center(
                        child: Text('Food Menu',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white))),
                    Row(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () => setState(() {
                                        indexTab = 2;
                                      }),
                                  child: const Icon(Icons.food_bank_sharp,
                                      color: Colors.white)),
                              Text(
                                '+${model.count}',
                                style: const TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ));
              },
            ),
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
            child: pages[indexTab],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.food_bank_sharp), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.details), label: 'detail'),
              BottomNavigationBarItem(icon: Icon(Icons.details), label: 'wip'),
            ],
            onTap: (value) => setState(() {
              indexTab = value;
            }),
            currentIndex: indexTab,
          ),
        ),
      ),
    );
  }
}
