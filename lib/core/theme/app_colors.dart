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
  static const Color dialogBackground = Color(0xFF1C1B1E);

  // Surfaces & borders
  static final Color borderFaint = Colors.white.withValues(alpha: 0.08);
  static final Color borderSoft = Colors.white.withValues(alpha: 0.15);
  static final Color buttonSurface = Colors.white.withValues(alpha: 0.07);
  static final Color badgeSurface = Colors.white.withValues(alpha: 0.04);
  static final Color cardShadow = Colors.black.withValues(alpha: 0.37);

  // Text
  static final Color textSecondary = Colors.white.withValues(alpha: 0.60);
  static final Color textTertiary = Colors.white.withValues(alpha: 0.50);

  // Icons
  static const Color iconColor = Colors.white70;

  // Shades of white
  static const Color white90 = Color(0xE6FFFFFF);

  // --- Generic nav/toggle row tokens (danger_zone, security_card, preferences_card) ---
  static final Color neutralIconSurface = Colors.white.withValues(alpha: 0.05);
  static final Color neutralIconBorder = Colors.white.withValues(alpha: 0.08);
  static final Color dividerFaint = Colors.white.withValues(alpha: 0.06);
  static final Color chevronColor = Colors.white.withValues(alpha: 0.40);

  // --- Accent (purple) row tokens — preferences_card toggle row ---
  static final Color accentRowSurfaceActive = AppColors.primaryGradientEnd.withValues(alpha: 0.05);
  static final Color accentIconSurface = AppColors.primaryGradientEnd.withValues(alpha: 0.15);
  static final Color accentIconBorder = AppColors.primaryGradientEnd.withValues(alpha: 0.30);
  static final Color accentIconGlow = AppColors.primaryGradientEnd.withValues(alpha: 0.20);
  static const Color accentIconForeground = AppColors.primaryGradientMid;

  // --- Switch tokens (neon_switch) ---
  static const Color switchGradientStart = AppColors.primaryGradientEnd;
  static const Color switchGradientEnd = Color(0xFFA836E8);
  static final Color switchTrackOff = Colors.white.withValues(alpha: 0.10);
  static final Color switchBorderOff = Colors.white.withValues(alpha: 0.10);
  static final Color switchGlow = AppColors.primaryGradientEnd.withValues(alpha: 0.55);
  static const Color switchThumbShadow = Colors.black26;

  // --- Bottom nav tokens (bottom_nav) ---
  static final Color navBackground = const Color(0xFF0E0E0E).withValues(alpha: 0.90);
  static const Color navInactive = Colors.white38;
  static const Color navActive = AppColors.primaryGradientEnd;
  static final Color navActiveGlow = AppColors.primaryGradientEnd.withValues(alpha: 0.80);
  static const Color navActiveDotGlow = AppColors.primaryGradientEnd;

  // --- Danger tokens (danger_zone) ---
  static const Color danger = Color(0xFFF43F5E);
  static final Color dangerSurfaceStart = const Color(0xFF1C1316).withValues(alpha: 0.60);
  static final Color dangerSurfaceEnd = const Color(0xFF120B0D).withValues(alpha: 0.70);
  static final Color dangerBorder = AppColors.danger.withValues(alpha: 0.20);
  static final Color dangerIconSurface = AppColors.danger.withValues(alpha: 0.15);
  static final Color dangerIconBorder = AppColors.danger.withValues(alpha: 0.30);
  static final Color dangerGlow = AppColors.danger.withValues(alpha: 0.15);
  static final Color dangerSubtitle = AppColors.danger.withValues(alpha: 0.50);
  static final Color dangerChevron = AppColors.danger.withValues(alpha: 0.40);
}