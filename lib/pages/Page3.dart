import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blueGrey[100],
        child: ListView(
          children: [
            const ListTile(
              title: Text('Selected Food'),
            ),
            const Divider(),
            Consumer<CounterModel>(
              builder: (context, model, child) {
                return Column(
                  children: model.selectedFood
                      .map((food) => ListTile(
                            title: Text(food.foodName),
                            subtitle: Text(food.foodDescription),
                            trailing: Text('\$${food.foodCost}'),
                          ))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
