import 'package:flutter/material.dart';
import 'package:week3/FoodMenu.dart';

class Page2 extends StatelessWidget {
  
  final FoodMenu foodMenu;
  
  const Page2({
    super.key,
    required this.foodMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      ),
                    ),
                    child: const Text('ADD TO CART +'),
                  ),
                ],
              ),
            ),
          ),
          ListView(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.blueGrey[300],
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                          'assets/images/${foodMenu.foodImage}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ),
                  Container(
                    color: Colors.blueGrey,
                    child: Column(
                      children: [
                        
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    foodMenu.foodName,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => const Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        
                              Container(
                                child: Text(
                                  '${foodMenu.foodCost}\$',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Divider(),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            foodMenu.foodDescription,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
              ],
          ),
        ],
      ),
    );
  }
}