import 'package:flutter/material.dart';

class AppDimens {
  static double horizontalPadding(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 80.0 : 20.0;

  static double titleFontSize(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 ? 24.0 : 20.0;

  static const double appBarHeight = 64.0;
  static const double iconButtonSize = 22.0;
  static const double tightLetterSpacing = -0.5;

  static const Color borderColor = Colors.white12;

  static const smallGap = SizedBox(width: 8);
}
