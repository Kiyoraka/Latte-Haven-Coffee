// lib/main.dart
import 'package:flutter/material.dart';
import 'config/theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const LatteHavenApp());
}

class LatteHavenApp extends StatelessWidget {
  const LatteHavenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latte Haven Coffee',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}