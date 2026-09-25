import 'package:flutter/material.dart';

import '../../../../core/widgets/appbar.dart';
import '../../../../core/theme/app_dimens.dart';
import '../widgets/danger_zone.dart';
import '../widgets/preferences_card.dart';
import '../widgets/profile_card.dart';
import '../widgets/section_title.dart';
import '../widgets/security_card.dart';
import '../../../../core/widgets/bottom_navbar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkTheme = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            MotionAppBar(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(
                  AppDimens.horizontalPadding(context),
                  AppDimens.verticalPaddingTop(context),
                  AppDimens.horizontalPadding(context),
                  AppDimens.verticalPaddingBottom(context),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: AppDimens.profileCardMaxWidth(context),
                        ),
                        child: const ProfileCard(),
                      ),
                    ),
                    AppDimens.sectionSpacer,
                    const SectionTitle('App Preferences'),
                    AppDimens.titleSpacer,
                    PreferencesCard(
                      darkTheme: darkTheme,
                      onDarkThemeChanged: (v) => setState(() => darkTheme = v),
                    ),
                    AppDimens.sectionSpacer,
                    const SectionTitle('Account & Security'),
                    AppDimens.titleSpacer,
                    const SecurityCard(),
                    AppDimens.sectionSpacer,
                    const DangerZone(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
