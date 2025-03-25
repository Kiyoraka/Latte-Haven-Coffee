// lib/config/theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  // Coffee-inspired colors
  static const Color darkBrown = Color(0xFF442C2E);
  static const Color mediumBrown = Color(0xFF9C6644);
  static const Color lightBrown = Color(0xFFD2AA7D);
  static const Color cream = Color(0xFFF7E4C4);
  static const Color milkyWhite = Color(0xFFF5F5F5);

  static ThemeData get theme => ThemeData(
    primaryColor: darkBrown,
    scaffoldBackgroundColor: cream,
    appBarTheme: const AppBarTheme(
      backgroundColor: darkBrown,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: darkBrown,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: darkBrown,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        color: darkBrown,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        color: darkBrown,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: mediumBrown,
        foregroundColor: milkyWhite,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}