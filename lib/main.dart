import 'package:app_test/HealthApp/home_screen.dart';
import 'package:app_test/News/home_screen.dart';
import 'package:app_test/WourkoutApp/home_screen.dart';
import 'package:app_test/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.lightMode,
        debugShowCheckedModeBanner: false,
        routes: {
          HealthHomeScreen.routeName: (_) => HealthHomeScreen(),
          WorkoutHomeScreen.routeName: (_) => WorkoutHomeScreen(),
          NewsHomeScreen.routeName: (_) => NewsHomeScreen(),
        },
        initialRoute: WorkoutHomeScreen.routeName);
  }
}
