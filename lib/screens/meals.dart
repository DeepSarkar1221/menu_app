import 'package:flutter/material.dart';
// import 'package:menu_app/main.dart';
import 'package:menu_app/models/meal.dart';
import 'package:menu_app/widget/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Uh Oh !! There is Noting ....",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Select another Category",
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
        itemBuilder: (context, index) => MealItem(meal: meals[index]),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
