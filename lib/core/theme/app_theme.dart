import 'package:flutter/material.dart';

class AppTheme {
  static const Color gold = Color(0xFFE5A824);
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color lightBackground = Color(0xFFF7F7FB);
  static const Color lightSurface = Colors.white;

  static const double radiusSm = 10;
  static const double radiusMd = 12;
  static const double radiusLg = 16;
  static const double radiusXl = 24;

  static const EdgeInsets screenPadding = EdgeInsets.symmetric(
    horizontal: 24,
    vertical: 20,
  );
  static const EdgeInsets sectionPadding = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 16,
  );

  static Color backgroundFor(Brightness brightness) {
    return brightness == Brightness.dark ? darkBackground : lightBackground;
  }

  static Color surfaceFor(Brightness brightness) {
    return brightness == Brightness.dark ? darkSurface : lightSurface;
  }

  static Color borderFor(Brightness brightness) {
    return brightness == Brightness.dark
        ? Colors.white12
        : Colors.black.withAlpha(24);
  }

  static Color mutedOnSurface(BuildContext context, {double opacity = 0.54}) {
    return Theme.of(context).colorScheme.onSurface.withValues(alpha: opacity);
  }
}
