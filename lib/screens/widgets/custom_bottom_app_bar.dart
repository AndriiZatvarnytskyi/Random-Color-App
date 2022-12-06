import 'package:flutter/material.dart';

import 'package:random_color_app/screens/widgets/widgets.dart';

class CustomBottomAppBarr extends StatelessWidget {
  const CustomBottomAppBarr({
    Key? key,
    required this.colorValue,
  }) : super(key: key);

  final String colorValue;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.only(bottom: 10),
          height: 70,
          child: Center(
            child: SizedBox(
              child: Stack(
                children: [
                  CustomToolTip(
                    text: colorValue,
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('Tap to copy'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
