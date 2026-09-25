import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/user/presentation/screens/settings_screen.dart';
void main() {
  runApp(const MotionApp());
}

class MotionApp extends StatelessWidget {
  const MotionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOTION GALLERY',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const SettingsScreen(),
    );
  }
}