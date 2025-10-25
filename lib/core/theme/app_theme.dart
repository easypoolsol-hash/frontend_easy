import 'package:flutter/material.dart';

/// Material Design 3 Theme Configuration
/// Following 2025 UX best practices for dark mode and accessibility
class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  /// Primary color palette (Bus Yellow - warm, professional)
  static const Color primaryColor = Color(0xFFE6A800);
  static const Color primaryLight = Color(0xFFF5C842);
  static const Color primaryDark = Color(0xFFB88600);

  /// Surface colors for dark mode (using dark gray, not pure black)
  static const Color surfaceDark = Color(0xFF121212);
  static const Color surfaceLight = Color(0xFFFAFAFA);

  /// Error colors
  static const Color errorColor = Color(0xFFD55E00);

  /// Success colors
  static const Color successColor = Color(0xFF009E73);

  /// Warning colors
  static const Color warningColor = Color(0xFFF0E442);

  /// Light theme (MD3)
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: surfaceLight,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );

  /// Dark theme (MD3) - Following 2025 best practices
  /// Using dark gray (#121212) instead of pure black for better accessibility
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.dark,
      surface: surfaceDark,
    ),
    scaffoldBackgroundColor: surfaceDark,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      elevation: 0,
      backgroundColor: surfaceDark,
    ),
    cardTheme: CardThemeData(
      elevation: 1,
      color: const Color(0xFF1C1C1C), // Slightly lighter than surface
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}
