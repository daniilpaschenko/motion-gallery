import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';
import 'core/theme/app_theme.dart';
import 'features/user/presentation/blocs/user_bloc.dart';
import 'features/user/presentation/blocs/user_event.dart';
import 'features/user/presentation/screens/settings_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MotionApp());
}

class MotionApp extends StatelessWidget {
  const MotionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<UserBloc>()..add(const UserEvent.started()),
      child: MaterialApp(
        title: 'MOTION GALLERY',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        home: const SettingsScreen(),
      ),
    );
  }
}
