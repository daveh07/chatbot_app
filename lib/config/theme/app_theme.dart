// lib/config/theme/app_theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xFF7AA2F7),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF7AA2F7),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[100],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: Colors.grey[600]),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF7AA2F7),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF7AA2F7),
      secondary: Color(0xFF9ECE6A),
      surface: Colors.white,
      background: Colors.white,
      error: Color(0xFFF7768E),
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    // Base colors
    scaffoldBackgroundColor: const Color(0xFF1A1B26), // Dark background
    primaryColor: const Color(0xFF7AA2F7), // Blue accent

    // AppBar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF24283B), // Slightly lighter than background
      elevation: 0,
      iconTheme: IconThemeData(color: Color(0xFFA9B1D6)), // Icons color
      titleTextStyle: TextStyle(
        color: Color(0xFFA9B1D6),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

    // Input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF24283B), // Slightly lighter than background
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(color: Color(0xFF565F89)), // Muted text color
    ),

    // Card theme
    cardTheme: CardTheme(
      color: const Color(0xFF24283B), // Slightly lighter than background
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),

    // Icon theme
    iconTheme: const IconThemeData(
      color: Color(0xFFA9B1D6), // Icons color
    ),

    // Text theme
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFFA9B1D6)), // Default text color
      bodyMedium: TextStyle(color: Color(0xFFA9B1D6)),
      titleLarge: TextStyle(color: Color(0xFFA9B1D6)),
    ),

    // Color scheme
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF7AA2F7), // Blue accent
      secondary: Color(0xFF9ECE6A), // Green accent
      surface: Color(0xFF24283B),
      background: Color(0xFF1A1B26),
      error: Color(0xFFF7768E),
    ),
  );
}
