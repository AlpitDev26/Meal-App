import 'package:flutter/material.dart';
import 'package:meal_recipe_app/data/category_data.dart';
import 'package:meal_recipe_app/models/meal_model.dart';

import '../data/meal_data.dart';

class MealScreen extends StatelessWidget {
  final String title;
  final Color color;
  final String catId;

  const MealScreen({
    super.key,
    required this.title,
    required this.color,
    required this.catId,
  });

  @override
  Widget build(BuildContext context) {
    List<MealModel> filterMeal = meals.where((meal) {
      return meal.categories.contains(catId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: Colors.amber,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filterMeal.length,
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.hardEdge,
            elevation: 1.8,
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    meals[index].imageUrl,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 44,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          meals[index].title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              meals[index].complexity.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              meals[index].affordability.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              meals[index].duration.toString(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
