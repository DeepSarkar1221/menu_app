import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:menu_app/data/dummy_data.dart';
import 'package:menu_app/screens/categories.dart';
// import 'package:menu_app/screens/meals.dart';

final theme = ThemeData(
  useMaterial3: false,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 5, 136, 92),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main(){
  runApp(const App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: theme,
      home: CategoriesPage()
    );
  }
}