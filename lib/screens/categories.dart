import 'package:flutter/material.dart';
import 'package:menu_app/data/dummy_data.dart';
import 'package:menu_app/models/category.dart';
import 'package:menu_app/screens/meals.dart';
import 'package:menu_app/widget/category_grid_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  void _selectCategoryScreen(BuildContext context, Category category) {
    final matchingMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(title: category.title, meals: matchingMeals),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu Categories"),
      ),
      backgroundColor: const Color.fromARGB(255, 179, 228, 207),
      
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          childAspectRatio: 1.5,
          mainAxisSpacing: 20,

        ),
        padding: const EdgeInsets.fromLTRB(10, 16, 10, 0),    
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectScreen: () {
                _selectCategoryScreen(context, category);
              },
            ),
        ],
      ),
    );
  }
}
