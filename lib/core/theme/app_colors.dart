import 'package:flutter/material.dart';

class AppColors {
  // AppBar
  static final Color appBarBackground = const Color(0xFF0E0E0E).withValues(alpha: 0.85);

  // Gradient
  static const Color primaryGradientStart = Colors.white;
  static const Color primaryGradientMid = Color(0xFFE9B3FF);
  static const Color primaryGradientEnd = Color(0xFFBF5AF2);

  // Glow fade
  static final Color glowStart = AppColors.primaryGradientStart.withValues(alpha: 0.35);
  static final Color glowMid = AppColors.primaryGradientMid.withValues(alpha: 0.15);
  static final Color glowFade = AppColors.primaryGradientEnd.withValues(alpha: 0.0);

  // Card
  static final Color cardSurfaceStart = const Color(0xFF1C1B1E).withValues(alpha: 0.75);
  static final Color cardSurfaceEnd = const Color(0xFF121113).withValues(alpha: 0.85);
  static final Color accentGlow = AppColors.primaryGradientEnd.withValues(alpha: 0.45);
  static const Color placeholderSurface = Color(0xFF222222);
  static const Color placeholderIcon = Colors.white54;

  // Surfaces & borders
  static final Color borderFaint = Colors.white.withValues(alpha: 0.08);
  static final Color borderSoft = Colors.white.withValues(alpha: 0.15);
  static final Color buttonSurface = Colors.white.withValues(alpha: 0.07);
  static final Color badgeSurface = Colors.white.withValues(alpha: 0.04);
  static final Color cardShadow = Colors.black.withValues(alpha: 0.37);

  // Text
  static final Color textSecondary = Colors.white.withValues(alpha: 0.60);

  // Icons
  static const Color iconColor = Colors.white70;

  // Shades of white
  static const Color white90 = Color(0xE6FFFFFF);
}