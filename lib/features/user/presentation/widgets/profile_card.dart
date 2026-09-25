import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_theme.dart';
import '../blocs/user_bloc.dart';
import '../blocs/user_state.dart';
import 'edit_profile_dialog.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) => _buildCard(context, state),
    );
  }

  Widget _buildCard(BuildContext context, UserState state) {
    final cardPadding = AppDimens.cardPadding(context);
    final cardTitleFontSize = AppDimens.cardTitleFontSize(context);
    final detailFontSize = AppDimens.detailFontSize(context);
    final avatarSize = AppDimens.avatarSize(context);
    final isLoading = state is! UserLoaded;
    final isChangingUserName = state is UserLoaded && state.isChangingUserName;
    final userName = state is UserLoaded ? state.user.name : 'Motion User';

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(cardPadding),
      decoration: AppTheme.glassCardDecoration(),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: AppDimens.glowTop,
            child: Container(
              width: AppDimens.glowSize,
              height: AppDimens.glowSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.glowStart,
                    AppColors.glowMid,
                    AppColors.glowFade,
                  ],
                  stops: AppDimens.glowStops,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: avatarSize,
                    height: avatarSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.primaryGradientEnd,
                        width: AppDimens.avatarBorderWidth,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.accentGlow,
                          blurRadius: AppDimens.avatarGlowBlur,
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.primaryGradientStart,
                          AppColors.primaryGradientMid,
                          AppColors.glowFade,
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(AppDimens.avatarOuterPadding),
                    child: ClipOval(
                      // temporary
                      child: Image.network(
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuD3Kj74NO7Qrhg4GoU4suY5-orSr3CE1MUU3zjMYmifV9s_IkTDoC7c1ywl-qkKrJiZV6I7NnNn_opITji9mlG8MddGjfeMudi-KztYOD-zT118tRuizEZkXgdybvC1D9BePcD4YJQC33l1ZvcKxE1ztxA5E_uSPRA3LhjHx1K1Jalpnbh2_yOWjE42wBnEkk2eR81BD35Q0nDbVEcmThwa_xQJQYgg72aghFMnOr5L2DyE5qvQ9rvG7Q',
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) => Container(
                          color: AppColors.placeholderSurface,
                          child: Icon(
                            Icons.person,
                            size: AppDimens.placeholderIconSize,
                            color: AppColors.placeholderIcon,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              AppDimens.cardGap,
              Text(
                userName,
                style: TextStyle(
                  fontSize: cardTitleFontSize,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: AppDimens.cardTitleSpacing,
                ),
              ),
              AppDimens.cardSectionSpacer,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // temporary
                  _StatBadge(
                    icon: Icons.folder_special,
                    value: '3',
                    label: 'Collections',
                  ),
                  AppDimens.badgeGap,
                  // temporary
                  _StatBadge(
                    icon: Icons.favorite,
                    value: '48',
                    label: 'Favorites',
                  ),
                ],
              ),
              AppDimens.cardSectionSpacer,
              OutlinedButton.icon(
                onPressed: isLoading || isChangingUserName
                    ? null
                    : () => EditProfileDialog.show(
                        context,
                        currentName: userName,
                      ),
                icon: isChangingUserName
                    ? SizedBox.square(
                        dimension: AppDimens.editIconSize,
                        child: const CircularProgressIndicator(
                          strokeWidth: 2,
                          color: AppColors.primaryGradientEnd,
                        ),
                      )
                    : Icon(
                        Icons.edit,
                        size: AppDimens.editIconSize,
                        color: AppColors.primaryGradientEnd,
                      ),
                label: Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: detailFontSize,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: AppDimens.buttonVPadding,
                    horizontal: AppDimens.buttonHPadding,
                  ),
                  side: BorderSide(color: AppColors.borderSoft),
                  backgroundColor: AppColors.buttonSurface,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppDimens.pillRadius),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatBadge extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _StatBadge({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final detailFontSize = AppDimens.detailFontSize(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimens.badgeHPadding,
        vertical: AppDimens.badgeVPadding,
      ),
      decoration: BoxDecoration(
        color: AppColors.badgeSurface,
        borderRadius: BorderRadius.circular(AppDimens.pillRadius),
        border: Border.all(color: AppColors.borderFaint),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: AppDimens.badgeIconSize,
            color: AppColors.primaryGradientEnd,
          ),
          AppDimens.badgeGapSmall,
          Text(
            value,
            style: TextStyle(
              fontSize: detailFontSize,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          AppDimens.badgeGapTiny,
          Text(
            label,
            style: TextStyle(
              fontSize: detailFontSize,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
