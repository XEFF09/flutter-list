import 'package:flutter/material.dart';
import '../components/FoodCardLg.dart';
import '../components/SearchBarApp.dart';
import '../FoodMenu.dart';
import '../components/FoodCardSm.dart';

class HomePage extends StatelessWidget {

  final Function(int index, FoodMenu currFood) onChangePage;

  const HomePage({
    super.key,
    required this.onChangePage,
  });

  @override
  Widget build(BuildContext context) {

    FoodMenu mainFood = FoodMenu(
      foodName: 'fried_chicken', 
      foodDescription: 'a dish consisting of chicken pieces that have been coated with seasoned flour or batter and pan-fried, deep fried, pressure fried, or air fried',
      foodImage: 'fried_chicken.jpg',
      foodCost: 15
    );

    FoodMenu subFood = FoodMenu(
      foodName: 'somtum', 
      foodDescription: "a Thai papaya salad. Don't confuse Thai salads with the boring leafy salads the rest of the world enjoys.",
      foodImage: 'somtum.jpg',
      foodCost: 30
    );

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              children: [
                FoodCardLg(
                  foodMenu: mainFood,
                  onChangePage: onChangePage,
                ),
                
                Stack(
                  children: [
                    
                    const SearchBarApp(),
                    Transform.translate(offset: const Offset(0, 70),),

                    Container(
                      margin: const EdgeInsets.only(top: 90),
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.9,
                        children: List<Widget>.generate(10, (i) => 
                          FoodCardSm(
                            foodMenu: subFood,
                            onChangePage: onChangePage,
                          )
                        )
                      )
                    )
                  ],
                )
              ]
            )
          )
        ],
      ),
    );
  }
}