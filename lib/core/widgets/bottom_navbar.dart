import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimens.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.navBackground,
        border: Border(
          top: BorderSide(
            color: AppColors.borderFaint,
            width: AppDimens.navBorderWidth,
          ),
        ),
      ),
      child: SafeArea(
        child: SizedBox(
          height: AppDimens.navHeight(context),
          child: Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: AppDimens.navMaxWidth(context)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // temporary
                  _NavItem(icon: Icons.grid_view, label: 'Gallery', active: false),
                  _NavItem(icon: Icons.folder_special, label: 'Collections', active: false),
                  _NavItem(icon: Icons.favorite, label: 'Favorites', active: false),
                  _NavItem(icon: Icons.settings, label: 'Settings', active: true),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    final iconSize = AppDimens.navIconSize(context);
    final fontSize = AppDimens.navFontSize(context);
    final color = active ? AppColors.navActive : AppColors.navInactive;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
          color: color,
          shadows: active
              ? [
                  Shadow(
                    color: AppColors.navActiveGlow,
                    blurRadius: AppDimens.navActiveIconGlowBlur,
                  ),
                ]
              : null,
        ),
        SizedBox(height: AppDimens.navLabelGap),
        Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: active ? FontWeight.w600 : FontWeight.w500,
            color: active ? AppColors.white90 : AppColors.navInactive,
          ),
        ),
        if (active)
          Container(
            margin: EdgeInsets.only(top: AppDimens.navDotMarginTop),
            width: AppDimens.navDotSize,
            height: AppDimens.navDotSize,
            decoration: BoxDecoration(
              color: AppColors.navActive,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.navActiveDotGlow,
                  blurRadius: AppDimens.navDotGlowBlur,
                ),
              ],
            ),
          ),
      ],
    );
  }
}