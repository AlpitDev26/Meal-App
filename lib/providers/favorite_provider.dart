// import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_recipe_app/models/meal_model.dart';

class FavoritesMealsNotifier extends StateNotifier<List<MealModel>> {
  FavoritesMealsNotifier()
    : super(
        [],
      ); // We have to start from index 0 because we have nothing in favorite screen

  bool toggleMealFavStatus(MealModel meal) {
    bool mealIsFav = state.contains(meal);
    if (mealIsFav) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoritesMealsNotifier, List<MealModel>>((ref) {
      return FavoritesMealsNotifier();
    });
