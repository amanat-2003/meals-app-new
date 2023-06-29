import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/data/dummy_data.dart';

final allMealsProvider = Provider((ref) => dummyMeals,);