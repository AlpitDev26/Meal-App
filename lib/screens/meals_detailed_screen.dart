import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_recipe_app/models/meal_model.dart';
import 'package:meal_recipe_app/providers/favorite_provider.dart';

class MealsDetailedScreen extends ConsumerWidget {
  // final String title;
  final MealModel meal;

  const MealsDetailedScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<MealModel> favouriteMeals = ref.watch(favoriteMealsProvider);

    final isFav = favouriteMeals.contains(meal);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          meal.title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              /// some logic to add this is in the favorite screen
              ref.read(favoriteMealsProvider.notifier)
                  .toggleMealFavStatus(meal);
            },
            icon: Icon(isFav ? Icons.favorite : Icons.favorite_border),
            color: isFav ? Colors.red : Colors.white,
          ),
        ],
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  meal.imageUrl,
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
                ...meal.ingredients.map((item) {
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
                ...meal.steps.map((item) {
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
