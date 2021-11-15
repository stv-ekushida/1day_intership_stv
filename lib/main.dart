import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common/app_theme.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return _buildMaterialApp;
  }

  MaterialApp get _buildMaterialApp {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STVインターンシップ',
      theme: AppTheme.instance.themeData(),
      initialRoute: AppRoutes.middleAreas,
      onGenerateRoute: (route) => AppRouter.onGenerateRoute(route),
    );
  }
}
