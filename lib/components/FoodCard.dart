import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {

  final String foodName;
  final String foodDescription;
  final String foodImage;

  const FoodCard({
    super.key, 
    required this.foodName, 
    required this.foodDescription, 
    required this.foodImage
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Color.fromARGB(255, 129, 177, 172),
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
                  'assets/images/$foodImage',
                  fit: BoxFit.fitWidth,
                ),
              ),
              ListTile(
                title: Text(
                  foodName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(foodDescription),
              ),
            ],
          ),
          Positioned(
            right: 10,
            top: 10,
            child: ClipOval(
              child: Material(
                color: Colors.white, // Button background color
                child: InkWell(
                  onTap: () {},
                  child: const SizedBox(
                    width: 40, // Adjust the width as needed
                    height: 40, // Adjust the height as needed
                    child: Center(
                      child: Text('+',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black, // Button text color
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
    );
  }

  Widget lgCard(BuildContext context) {
    return build(context);
  }

  Widget smCard(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 59, 197, 183),
      elevation: 10,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(8.0),
            ),
            child: Image.asset(
              'assets/images/$foodImage',
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
                    foodName,
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
    );
  }
}
