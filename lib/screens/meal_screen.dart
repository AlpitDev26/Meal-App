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
    List<MealModel> filter_meal = meals.where((meal){
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
        itemCount: filter_meal.length,
        itemBuilder: (context, index) {
          return Container(
            child: Image.network(filter_meal[index].imageUrl),
          );
        },
      ),
    );
  }
}
