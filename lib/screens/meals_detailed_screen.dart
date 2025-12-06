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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  meals.imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 250,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Ingredients",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 4),
                ...meals.ingredients.map((item) {
                  return Text(
                    item,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.amber, fontSize: 18),
                  );
                }),
                const SizedBox(height: 15),
                Text(
                  "Steps",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 4),
                ...meals.steps.map((item) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 10,
                    ),
                    child: Text(
                      item,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18, color: Colors.amber),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
