import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_dimens.dart';

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

  /// common glass gradient
  static BoxDecoration glassCardDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(AppDimens.cardRadius),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [AppColors.cardSurfaceStart, AppColors.cardSurfaceEnd],
      ),
      border: Border.all(color: AppColors.borderFaint),
      boxShadow: [
        BoxShadow(
          color: AppColors.cardShadow,
          blurRadius: AppDimens.cardShadowBlur,
          offset: AppDimens.cardShadowOffset,
        ),
      ],
    );
  }
}