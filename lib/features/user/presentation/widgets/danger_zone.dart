import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';

class DangerZone extends StatelessWidget {
  const DangerZone({super.key});

  @override
  Widget build(BuildContext context) {
    final rowPadding = AppDimens.rowPadding(context);
    final titleFontSize = AppDimens.rowTitleFontSize(context);
    final subtitleFontSize = AppDimens.rowSubtitleFontSize(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.cardRadius),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.dangerSurfaceStart, AppColors.dangerSurfaceEnd],
        ),
        border: Border.all(color: AppColors.dangerBorder),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(AppDimens.cardRadius),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: rowPadding, vertical: rowPadding),
            child: Row(
              children: [
                Container(
                  width: AppDimens.rowIconContainerSize,
                  height: AppDimens.rowIconContainerSize,
                  decoration: BoxDecoration(
                    color: AppColors.dangerIconSurface,
                    borderRadius: BorderRadius.circular(AppDimens.rowIconContainerRadius),
                    border: Border.all(color: AppColors.dangerIconBorder),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.dangerGlow,
                        blurRadius: AppDimens.rowIconGlowBlur,
                      ),
                    ],
                  ),
                  child: Icon(Icons.logout, size: AppDimens.rowIconSize, color: AppColors.danger),
                ),
                SizedBox(width: AppDimens.rowSpacing),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.w600,
                          color: AppColors.danger,
                        ),
                      ),
                      Text(
                        'Sign out of your active session',
                        style: TextStyle(
                          fontSize: subtitleFontSize,
                          color: AppColors.dangerSubtitle,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: AppColors.dangerChevron,
                  size: AppDimens.rowChevronSize,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}