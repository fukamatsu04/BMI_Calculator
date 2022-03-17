import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input_page.dart';
import 'colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
      home: InputPage(),
    );
  }
}
