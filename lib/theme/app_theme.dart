import 'package:flutter/material.dart';

class AppColors {
  static const orange = Color(0xFFFFA21A);
  static const deepOrange = Color(0xFFFF6B35);
  static const charcoal = Color(0xFF222831);
}

ThemeData buildShopTheme(Brightness brightness) {
  final isDark = brightness == Brightness.dark;
  final scheme =
      ColorScheme.fromSeed(
        seedColor: AppColors.orange,
        brightness: brightness,
      ).copyWith(
        primary: AppColors.orange,
        secondary: AppColors.deepOrange,
        surface: isDark ? const Color(0xFF1D2026) : Colors.white,
        onPrimary: Colors.white,
      );

  return ThemeData(
    useMaterial3: true,
    brightness: brightness,
    colorScheme: scheme,
    scaffoldBackgroundColor: isDark
        ? const Color(0xFF111318)
        : const Color(0xFFF0F2F5),
    appBarTheme: AppBarTheme(
      backgroundColor: isDark ? const Color(0xFF171A20) : Colors.white,
      foregroundColor: isDark ? Colors.white : const Color(0xFF222831),
      centerTitle: false,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: isDark ? Colors.white : const Color(0xFF222831),
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.orange,
        foregroundColor: Colors.white,
        minimumSize: const Size(88, 42),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        textStyle: const TextStyle(fontWeight: FontWeight.w800),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: isDark ? Colors.white : const Color(0xFF222831),
      ),
    ),
  );
}
