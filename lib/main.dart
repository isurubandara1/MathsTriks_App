import 'package:flutter/material.dart';
import 'package:maths_tricks/Sequences/Sequences.dart';
import 'Equation/QuadraticEquation.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuadraticEquation(),
    );
  }
}
