import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_app/helper/extenstion.dart';

void main() {
  test('RGB to hex convert', () {
    const Color testColor = Color.fromARGB(233, 41, 151, 127);

    final String res = testColor.toHexTtriplet();

    expect(res, '#29977F');
  });
}
