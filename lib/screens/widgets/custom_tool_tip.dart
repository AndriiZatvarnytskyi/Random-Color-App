import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomToolTip extends StatelessWidget {
  final String text;
  const CustomToolTip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Tooltip(
        preferBelow: false,
        message: '',
        textStyle: const TextStyle(fontSize: 30),
        child: GestureDetector(
          child: Container(
            width: double.infinity,
            height: 70,
            color: Colors.white,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        Clipboard.setData(
          ClipboardData(text: text),
        );
        scaffoldMesseg(context);
      },
    );
  }

  void scaffoldMesseg(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Color has copied',
          textAlign: TextAlign.center,
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
