import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/all_meals_provider.dart';
import 'package:meals_app/providers/filters_provider.dart';

final filteredMealsProvider = Provider((ref) {
  final filters = ref.watch(filtersStateProvider);
  final allMeals = ref.watch(allMealsProvider);
  return allMeals.where((meal) {
    if (filters[Filter.glutenFree]! && !meal.isGlutenFree) return false;
    if (filters[Filter.lactoseFree]! && !meal.isLactoseFree) return false;
    if (filters[Filter.vegetarian]! && !meal.isVegetarian) return false;
    if (filters[Filter.vegan]! && !meal.isVegan) return false;
    return true;
  }).toList();
});
