import 'package:flutter/material.dart';

/// Material Design 3 Theme Configuration
/// Following 2025 UX best practices for dark mode and accessibility
class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  /// Primary color palette (School Bus Yellow - bright, happy)
  static const Color primaryColor = Color(0xFFFFD800); // Bright happy yellow
  static const Color primaryLight = Color(0xFFFFE54C);
  static const Color primaryDark = Color(0xFFFFC800);

  /// Surface colors (bright white for happy feeling, deep black for contrast)
  static const Color surfaceDark = Color(0xFF1A1A1A); // Black from login
  static const Color surfaceLight = Color(0xFFFFFFFF); // Pure white

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
    colorScheme: const ColorScheme.light(
      primary: primaryColor, // Bright happy yellow
      onPrimary: Color(0xFF1A1A1A), // Black text on yellow
      primaryContainer: primaryLight, // Lighter yellow for containers
      onPrimaryContainer: Color(0xFF1A1A1A),
      secondary: Color(0xFF66BB6A), // Lighter green accent
      onSecondary: Colors.white,
      surface: surfaceLight, // White background
      onSurface: Color(0xFF1A1A1A), // Black text
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
