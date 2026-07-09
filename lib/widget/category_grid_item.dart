import 'package:flutter/material.dart';
import 'package:menu_app/models/category.dart';


class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectScreen,
  });
  final Category category;
  final void Function() onSelectScreen;
 


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectScreen,
      borderRadius: BorderRadius.circular(16),
      splashColor: Theme.of(context).primaryColor,

      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              category.color.withValues(alpha: 0.55),
              category.color.withValues(alpha: .9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
