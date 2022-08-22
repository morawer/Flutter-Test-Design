import 'package:calculator/design_2/calculator_screen2.dart';
import 'package:flutter/material.dart';

import 'design_1/calculator_screen1.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        "calculatorDesign1": (_) => const CalculatorScreen1(),
        "calculatorDesign2": (_) => const CalculatorScreen2(),
      },
    );
  }
}
