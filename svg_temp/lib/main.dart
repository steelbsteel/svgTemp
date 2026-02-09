import 'package:flutter/material.dart';
import 'package:svg_temp/features/increment_feature/increment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SVG Temp',
      home: const IncrementPage(),
    );
  }
}

