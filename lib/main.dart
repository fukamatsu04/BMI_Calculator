import 'package:flutter/material.dart';
import 'input_page.dart';
import 'colors.dart';
import 'results_page.dart';

void main() {
  runApp(BMICalculator());
}

// ignore: use_key_in_widget_constructors
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: AppColors.appBarColor),
        scaffoldBackgroundColor: AppColors.appBarColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/resultspage': (context) => ResultsPage(),
      },
    );
  }
}
