// lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'config/theme.dart';
import 'config/route.dart';
import 'models/order.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const LatteHavenApp());
}

class LatteHavenApp extends StatelessWidget {
  const LatteHavenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Order(),
      child: MaterialApp(
        title: 'Latte Haven Coffee',
        theme: AppTheme.theme,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}