import 'package:flutter/material.dart';

import 'package:food_delivery_app_mitch_koko/models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final Function()? onTap;
  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Food text
                    Text(food.name),
                    Text(
                      '\$' + food.price.toString(),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      food.description,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ],
                )),

                // const SizedBox(
                //   width: 15,
                // ),

                // Food image
                Image.asset(
                  food.imagePath,
                  height: 120,
                  width: 120,
                ),
              ],
            ),
          ),
        ),

        //divider line
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ],
    );
  }
}
