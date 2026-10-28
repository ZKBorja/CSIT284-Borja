import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:meals2/models/meal.dart';
import 'package:meals2/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
   const MealsScreen({super.key, 
   required this.title,
   required this.meals,
   });

  final String title;
  final List<Meal> meals;

   @override
   Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) => MealItem(meal: meals[index])
      );
    if (meals.isEmpty){
      content = Column(
        children: [
          Text('Uh oh ... nothing here!',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface
            ),
=======

import 'package:meals2/models/meal.dart';
import 'package:meals2/screens/meal_details.dart';
import 'package:meals2/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
    required this.onToggleFavorite,
  });

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavorite;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealDetailsScreen(
          meal: meal,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
>>>>>>> 87e068f3ddc5377db3d659c590b015f7b3bf7f6b
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
<<<<<<< HEAD
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface
              ),
          ),
        ],
      );
    }

     return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: content,
      );
   }
 }
=======
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(
          meal: meals[index],
          onSelectMeal: (meal) {
            selectMeal(context, meal);
          },
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
>>>>>>> 87e068f3ddc5377db3d659c590b015f7b3bf7f6b
