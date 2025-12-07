import 'package:flutter/material.dart';
import 'package:meal_recipe_app/models/meal_model.dart';

class MealsDetailedScreen extends StatefulWidget {
  // final String title;
  final MealModel meals;

  const MealsDetailedScreen({super.key, required this.meals});

  @override
  State<MealsDetailedScreen> createState() => _MealsDetailedScreenState();
}

class _MealsDetailedScreenState extends State<MealsDetailedScreen> {
  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          widget.meals.title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isFav = !_isFav;
              });

              /// some logic to add this is in the favorite screen

            },
            icon: Icon(_isFav ? Icons.favorite : Icons.favorite_border),
            color: _isFav ? Colors.red : Colors.white,
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
                  widget.meals.imageUrl,
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
                ...widget.meals.ingredients.map((item) {
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
                ...widget.meals.steps.map((item) {
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
