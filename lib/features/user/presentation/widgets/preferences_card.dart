import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';

import 'neon_switch.dart';

class PreferencesCard extends StatelessWidget {
  final bool darkTheme;
  final ValueChanged<bool> onDarkThemeChanged;

  const PreferencesCard({
    super.key,
    required this.darkTheme,
    required this.onDarkThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.glassCardDecoration(),
      child: _ToggleRow(
        icon: Icons.dark_mode,
        title: 'Dark Theme',
        subtitle: 'Use OLED optimized dark mode',
        value: darkTheme,
        onChanged: onDarkThemeChanged,
      ),
    );
  }
}

class _ToggleRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  const _ToggleRow({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final rowPadding = AppDimens.rowPadding(context);
    final titleFontSize = AppDimens.rowTitleFontSize(context);
    final subtitleFontSize = AppDimens.rowSubtitleFontSize(context);

    return Material(
      color: value ? AppColors.accentRowSurfaceActive : Colors.transparent,
      child: InkWell(
        onTap: () => onChanged(!value),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: rowPadding, vertical: rowPadding),
          child: Row(
            children: [
              Container(
                width: AppDimens.rowIconContainerSize,
                height: AppDimens.rowIconContainerSize,
                decoration: BoxDecoration(
                  color: AppColors.accentIconSurface,
                  borderRadius: BorderRadius.circular(AppDimens.rowIconContainerRadius),
                  border: Border.all(color: AppColors.accentIconBorder),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.accentIconGlow,
                      blurRadius: AppDimens.rowIconGlowBlur,
                    ),
                  ],
                ),
                child: Icon(icon, size: AppDimens.rowIconSize, color: AppColors.accentIconForeground),
              ),
              SizedBox(width: AppDimens.rowSpacing),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: AppDimens.rowSubtitleGap),
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: subtitleFontSize, color: AppColors.textTertiary),
                    ),
                  ],
                ),
              ),
              NeonSwitch(value: value, onChanged: onChanged),
            ],
          ),
        ),
      ),
    );
  }
}