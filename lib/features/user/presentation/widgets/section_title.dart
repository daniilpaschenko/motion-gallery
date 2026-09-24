import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    final sectionTitleFontSize = AppDimens.sectionTitleFontSize(context);

    return Padding(
      padding: const EdgeInsets.only(left: AppDimens.sectionTitlePadding),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: sectionTitleFontSize,
          fontWeight: FontWeight.w700,
          letterSpacing: AppDimens.wideLetterSpacing,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}