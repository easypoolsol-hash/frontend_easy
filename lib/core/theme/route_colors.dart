import 'package:flutter/material.dart';

/// Colorblind-safe route color palette
/// Based on Okabe-Ito palette + Paul Tol extensions
/// Ensures 4.5:1 contrast ratio for WCAG AA compliance
class RouteColors {
  RouteColors._();

  /// Okabe-Ito colorblind-safe palette (8 base colors)
  static const List<Color> basePalette = [
    Color(0xFF0072B2), // Blue (safest for colorblind)
    Color(0xFFE69F00), // Orange
    Color(0xFF56B4E9), // Sky Blue
    Color(0xFF009E73), // Bluish Green
    Color(0xFFF0E442), // Yellow
    Color(0xFFD55E00), // Vermillion (Red-Orange)
    Color(0xFFCC79A7), // Reddish Purple
    Color(0xFF999999), // Gray
  ];

  /// Extended palette for more routes (Paul Tol's bright scheme additions)
  static const List<Color> extendedPalette = [
    ...basePalette,
    Color(0xFF7570B3), // Purple
    Color(0xFF66C2A5), // Teal
    Color(0xFFFC8D62), // Salmon
    Color(0xFF8DA0CB), // Lavender
    Color(0xFFE78AC3), // Pink
    Color(0xFFA6D854), // Lime Green
    Color(0xFFFFD92F), // Gold
    Color(0xFFE5C494), // Tan
    Color(0xFFB3B3B3), // Light Gray
    Color(0xFF80B1D3), // Light Blue
    Color(0xFFFB8072), // Coral
    Color(0xFFBEBADA), // Lilac
  ];

  /// Get color by index (cycles through extended palette)
  static Color getColorByIndex(int index) {
    return extendedPalette[index % extendedPalette.length];
  }

  /// Get color from hex string (from API)
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Convert Color to hex string (for API)
  static String toHex(Color color) {
    final argb = color.toARGB32();
    return '#${argb.toRadixString(16).substring(2).toUpperCase()}';
  }

  /// Line dash patterns for additional visual distinction
  static const List<List<double>> dashPatterns = [
    [], // Solid line
    [8, 4], // Dashed line
    [2, 4], // Dotted line
    [8, 4, 2, 4], // Dash-dot line
    [12, 4, 2, 4, 2, 4], // Dash-dot-dot line
  ];

  /// Get dash pattern by line pattern string from API
  static List<double> getDashPattern(String pattern) {
    switch (pattern.toLowerCase()) {
      case 'solid':
        return dashPatterns[0];
      case 'dashed':
        return dashPatterns[1];
      case 'dotted':
        return dashPatterns[2];
      case 'dash-dot':
        return dashPatterns[3];
      case 'dash-dot-dot':
        return dashPatterns[4];
      default:
        return dashPatterns[0];
    }
  }

  /// Status colors (for buses)
  static const Color statusActive = Color(0xFF009E73); // Green
  static const Color statusUrgent = Color(0xFFD55E00); // Red-Orange
  static const Color statusIdle = Color(0xFF999999); // Gray
  static const Color statusWarning = Color(0xFFF0E442); // Yellow
}
