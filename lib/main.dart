import 'package:flutter/material.dart';
import 'package:random_color_app/screens/random_color_screen.dart/random_color_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RandomColorScreen(),
    );
  }
}
