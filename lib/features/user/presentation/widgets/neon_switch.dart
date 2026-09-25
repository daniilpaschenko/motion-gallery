import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';

class NeonSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const NeonSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: AppDimens.switchAnimationDuration,
        width: AppDimens.switchWidth,
        height: AppDimens.switchHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.pillRadius),
          gradient: value
              ? const LinearGradient(
                  colors: [AppColors.switchGradientStart, AppColors.switchGradientEnd],
                )
              : null,
          color: value ? null : AppColors.switchTrackOff,
          border: Border.all(
            color: value ? Colors.transparent : AppColors.switchBorderOff,
          ),
          boxShadow: value
              ? [
                  BoxShadow(
                    color: AppColors.switchGlow,
                    blurRadius: AppDimens.switchGlowBlur,
                  ),
                ]
              : null,
        ),
        child: AnimatedAlign(
          duration: AppDimens.switchAnimationDuration,
          curve: Curves.easeOut,
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.all(AppDimens.switchThumbMargin),
            width: AppDimens.switchThumbSize,
            height: AppDimens.switchThumbSize,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.switchThumbShadow,
                  blurRadius: AppDimens.switchThumbShadowBlur,
                  offset: AppDimens.switchThumbShadowOffset,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}