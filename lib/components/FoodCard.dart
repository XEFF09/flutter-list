import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {

  final String foodName;
  final String foodDescription;

  const FoodCard({
    super.key, 
    required this.foodName, 
    required this.foodDescription 
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal[100],
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(8.0),
            ),
            child: Image(
              image: NetworkImage(
                  'https://a.cdn-hotels.com/gdcs/production0/d1513/35c1c89e-408c-4449-9abe-f109068f40c0.jpg?impolicy=fcrop&w=800&h=533&q=medium'),
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(foodName),
            subtitle: Text(foodDescription),
          ),
        ],
      ),
    );
  }
}
