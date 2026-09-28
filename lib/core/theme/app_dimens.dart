import 'package:flutter/material.dart';

class AppDimens {
  static double horizontalPadding(BuildContext context) =>
        MediaQuery.sizeOf(context).width > 1000
    ? 300.0
    : MediaQuery.sizeOf(context).width > 600
        ? 80.0
        : 20.0;

  static double titleFontSize(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 24.0 : 20.0;

  static double cardPadding(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 32.0 : 24.0;

  static double cardTitleFontSize(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 26.0 : 22.0;

  static const double appBarHeight = 64.0;
  static const double iconButtonSize = 22.0;

  static const double tightLetterSpacing = -0.5;
  static const double wideLetterSpacing = 1.6;

  static const Color borderColor = Colors.white12;

  static const smallGap = SizedBox(width: 8);

  static const sectionSpacer = SizedBox(height: 28);
  static const titleSpacer = SizedBox(height: 10);

  // Card
  static double profileCardMaxWidth(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width > 600) return 500.0;
    return double.infinity;
  }

  static const double cardRadius = 20.0;
  static const double cardShadowBlur = 32.0;
  static const Offset cardShadowOffset = Offset(0, 8);
  static const double cardTitleSpacing = -0.3;

  static const double glowSize = 160.0;
  static const double glowTop = -20.0;
  static const List<double> glowStops = [0.0, 0.55, 1.0];

  static double avatarSize(BuildContext context) =>
      MediaQuery.sizeOf(context).width > 1000
    ? 144.0
    : MediaQuery.sizeOf(context).width > 600
        ? 124.0
        : 110.0;
  static const double avatarBorderWidth = 2.0;
  static const double avatarOuterPadding = 2.0;
  static const double avatarGlowBlur = 24.0;
  static const double placeholderIconSize = 48.0;

  static const cardGap = SizedBox(height: 16);
  static const cardSectionSpacer = SizedBox(height: 20);

  // Badge
  static const double badgeHPadding = 14.0;
  static const double badgeVPadding = 6.0;
  static const double badgeIconSize = 17.0;

  static double detailFontSize(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 15.0 : 13.5;

  static double sectionTitleFontSize(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 13.5 : 12;

  static const sectionTitlePadding = 4.0;

  static const badgeGap = SizedBox(width: 10);
  static const badgeGapSmall = SizedBox(width: 6);
  static const badgeGapTiny = SizedBox(width: 4);

  // Button
  static const double buttonVPadding = 20.0;
  static const double buttonHPadding = 75.0;
  static const double editIconSize = 17.0;
  static const double pillRadius = 999.0;

  static const double dialogMaxWidth = 600.0;
  static const double dialogFieldRadius = 15.0;
  static const EdgeInsets dialogFieldPadding = EdgeInsets.symmetric(
    horizontal: 16.0,
    vertical: 14.0,
  );
  static const double dialogButtonHPadding = 35.0;
  static const double dialogButtonVPadding = 15.0;
  static const double dialogProgressSize = 23.0;
  static const double dialogPadding = 25.0;
  static const int dialogNameMaxLength = 16;

  static double dialogTextFontSize(BuildContext context) =>
      MediaQuery.sizeOf(context).width > 600 ? 16.0 : 13.5;

  static double verticalPaddingTop(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 36.0 : 24.0;

  static double verticalPaddingBottom(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 150.0 : 120.0;

  // --- Generic nav/toggle row (danger_zone, security_card, preferences_card) ---
  static double rowPadding(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 20.0 : 16.0;

  static double rowTitleFontSize(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 17.0 : 16.0;

  static double rowSubtitleFontSize(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 14.0 : 13.0;

  static const double rowIconContainerSize = 40.0;
  static const double rowIconContainerRadius = 12.0;
  static const double rowIconSize = 20.0;
  static const double rowIconGlowBlur = 12.0;
  static const double rowSpacing = 14.0;
  static const double rowChevronSize = 22.0;
  static const double rowSubtitleGap = 2.0;
  static const double rowDividerHeight = 1.0;

  // --- Bottom nav (bottom_nav) ---
  static double navHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).width > 600 ? 68.0 : 56.0;

  static double navMaxWidth(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width > 1000) return 780.0;
    if (width > 600) return 600.0;
    return double.infinity;
  }

  static double navIconSize(BuildContext context) =>
      MediaQuery.sizeOf(context).width > 1000
    ? 28.0
    : MediaQuery.sizeOf(context).width > 600
        ? 26.0
        : 22.0;

  static double navFontSize(BuildContext context) =>
      MediaQuery.sizeOf(context).width > 1000
    ? 13.5
    : MediaQuery.sizeOf(context).width > 600
        ? 12.5
        : 11.0;

  static const double navBorderWidth = 1.0;
  static const double navActiveIconGlowBlur = 8.0;
  static const double navLabelGap = 2.0;
  static const double navDotSize = 4.0;
  static const double navDotMarginTop = 2.0;
  static const double navDotGlowBlur = 6.0;

  // --- Switch (neon_switch) ---
  static const double switchWidth = 48.0;
  static const double switchHeight = 28.0;
  static const double switchThumbSize = 20.0;
  static const double switchThumbMargin = 4.0;
  static const double switchGlowBlur = 16.0;
  static const double switchThumbShadowBlur = 4.0;
  static const Offset switchThumbShadowOffset = Offset(0, 1);
  static const Duration switchAnimationDuration = Duration(milliseconds: 300);
}
