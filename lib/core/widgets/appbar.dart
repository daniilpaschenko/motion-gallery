import 'package:flutter/material.dart';
import '../theme/app_dimens.dart';
import '../theme/app_colors.dart';

class MotionAppBar extends StatelessWidget {
  final Widget? searchBar;

  const MotionAppBar({super.key, this.searchBar});

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = AppDimens.horizontalPadding(context);
    final fontSize = AppDimens.titleFontSize(context);

    return Container(
      height: AppDimens.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      decoration: BoxDecoration(
        color: AppColors.appBarBackground,
        border: Border(bottom: BorderSide(color: AppDimens.borderColor)),
      ),
      child: Row(
        children: [
          AppDimens.smallGap,
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [
                AppColors.primaryGradientStart,
                AppColors.primaryGradientMid,
                AppColors.primaryGradientEnd,
              ],
            ).createShader(bounds),
            child: Text(
              'MOTION',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w900,
                letterSpacing: AppDimens.tightLetterSpacing,
                color: Colors.white,
              ),
            ),
          ),
          // if there is a search bar
          if (searchBar != null) ...[
            AppDimens.smallGap,
            searchBar!,
          ],
        ],
      ),
    );
  }
}
