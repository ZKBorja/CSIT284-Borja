import 'package:flutter_riverpod/legacy.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersnNotifier extends StateNotifier<Map<Filter, bool>> {
      FiltersnNotifier() : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });

  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }

}
final filtersProvider =
    StateNotifierProvider<FiltersnNotifier, Map<Filter, bool>>((ref) {
  return FiltersnNotifier();
});