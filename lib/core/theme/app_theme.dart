import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF0E0E0E),
      fontFamily: 'Inter',
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFFE9B3FF),
        secondary: Color(0xFFBF5AF2),
        surface: Color(0xFF131313),
      ),
    );
  }
}