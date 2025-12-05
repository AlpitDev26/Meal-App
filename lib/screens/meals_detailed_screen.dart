import 'package:flutter/material.dart';
import 'package:meal_recipe_app/models/meal_model.dart';

class MealsDetailedScreen extends StatelessWidget {
  // final String title;
  final MealModel meals;

  const MealsDetailedScreen({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          meals.title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: Colors.white,
          ),
        ),
      ),
      body: Scaffold(
        body: Column(
          children: [
            Image.asset(meals.imageUrl,
            width: double.infinity,
            height: 300,)
          ],
        )
      ),
    );
  }
}
