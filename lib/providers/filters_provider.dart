import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false
};

class FiltersStateNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersStateNotifier() : super(kInitialFilters);

  void setFilters(Map<Filter, bool> filters) {
    state = filters;
  }

  void setFilter(Filter filter, bool value) {
    state = {
      ...state,
      filter: value,
    };
  }
}

final filtersStateProvider =
    StateNotifierProvider<FiltersStateNotifier, Map<Filter, bool>>(
        (ref) => FiltersStateNotifier());
