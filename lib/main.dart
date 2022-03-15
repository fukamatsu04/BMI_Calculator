import 'package:flutter/material.dart';
import 'input_page.dart';
import 'colors.dart';

void main() {
  runApp(BMICalculator());
}

// ignore: use_key_in_widget_constructors
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: AppColors.appBarColor),
        scaffoldBackgroundColor: AppColors.appBarColor,
      ),
      home: InputPage(),
    );
  }
}