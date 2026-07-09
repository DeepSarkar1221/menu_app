// import 'package:flutter/material.dart';

enum Complexity { simple, challenging, hard }

enum Affordability { affordable, pricey, luxurious }

class Meal {
  const Meal({
    required this.categories,
    required this.duration,
    required this.affordability,
    required this.complexity,
    required this.id,
    required this.imageUrl,
    required this.ingredients,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.steps,
    required this.title,
  });

  final String id;
  final List<String> categories;
  final String imageUrl;
  final String title;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Affordability affordability;
  final Complexity complexity;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
}
