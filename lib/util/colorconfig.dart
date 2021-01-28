import 'package:flutter/material.dart';

Color colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

TextStyle style(
  double fontsize,
  String color,
) {
  return TextStyle(
      fontFamily: 'TT Commons', fontSize: fontsize, color: colorFromHex(color));
}
