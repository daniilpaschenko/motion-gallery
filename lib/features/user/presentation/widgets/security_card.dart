import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';

class SecurityCard extends StatelessWidget {
  const SecurityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.glassCardDecoration(),
      child: Column(
        children: [
          const _NavRow(icon: Icons.lock, title: 'Change Password'),
          Divider(height: AppDimens.rowDividerHeight, color: AppColors.dividerFaint),
          const _NavRow(icon: Icons.shield, title: 'Privacy Settings'),
        ],
      ),
    );
  }
}

class _NavRow extends StatelessWidget {
  final IconData icon;
  final String title;

  const _NavRow({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final rowPadding = AppDimens.rowPadding(context);
    final titleFontSize = AppDimens.rowTitleFontSize(context);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: rowPadding, vertical: rowPadding),
          child: Row(
            children: [
              Container(
                width: AppDimens.rowIconContainerSize,
                height: AppDimens.rowIconContainerSize,
                decoration: BoxDecoration(
                  color: AppColors.neutralIconSurface,
                  borderRadius: BorderRadius.circular(AppDimens.rowIconContainerRadius),
                  border: Border.all(color: AppColors.neutralIconBorder),
                ),
                child: Icon(icon, size: AppDimens.rowIconSize, color: AppColors.iconColor),
              ),
              SizedBox(width: AppDimens.rowSpacing),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Icon(Icons.chevron_right, color: AppColors.chevronColor, size: AppDimens.rowChevronSize),
            ],
          ),
        ),
      ),
    );
  }
}