import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      routes: {
        'home': (context) => InputPage(),
        'result': (context) => ResultPage(),
      },
    );
  }
}