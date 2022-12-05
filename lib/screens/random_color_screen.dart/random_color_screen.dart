import 'dart:math';
import 'package:flutter/material.dart';
import 'package:random_color_app/helper/extenstion.dart';
import '../widgets/widgets.dart';

class RandomColorScreen extends StatefulWidget {
  const RandomColorScreen({super.key});

  @override
  State<RandomColorScreen> createState() => _RandomColorScreenState();
}

class _RandomColorScreenState extends State<RandomColorScreen> {
  final random = Random();

  @override
  Widget build(BuildContext context) {
    final randomColor = Color.fromARGB(random.nextInt(256), random.nextInt(256),
        random.nextInt(256), random.nextInt(256));

    final String colorValue = randomColor.toHexTtriplet();

    return Scaffold(
      bottomNavigationBar: CustomBottomAppBarr(colorValue: colorValue),
      body: InkWell(
        onTap: () {
          setState(() {});
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: randomColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'HEY THERE',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
