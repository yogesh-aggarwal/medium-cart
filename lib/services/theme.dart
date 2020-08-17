import 'package:flutter/material.dart';

class LightTheme {
  static const Color borderColor = Color(0xFFCCCCCC);
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFEFEFE),
      Color(0xFFFEFEFE),
      Color(0xFFE7EBF5),
    ],
  );
  static const Color productPriceColor = Color(0xFF2095A2);
  static const Color disabledTextColor = Color(0xFF8492A6);
}
