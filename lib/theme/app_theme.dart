import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Extension to get theme-aware colors from BuildContext
extension DailyDashColorsExtension on BuildContext {
  DailyDashColorScheme get colors {
    final brightness = Theme.of(this).brightness;
    return brightness == Brightness.dark
        ? DailyDashColorScheme.dark()
        : DailyDashColorScheme.light();
  }
}

// The "Neon Nocturne" Design System Color Scheme
class DailyDashColorScheme {
  final Color background;
  final Color surface;
  final Color surfaceContainer;
  final Color surfaceContainerLow;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
  final Color surfaceVariant;
  final Color primary;
  final Color primaryContainer;
  final Color primaryDim;
  final Color secondary;
  final Color secondaryContainer;
  final Color onSurface;
  final Color onSurfaceVariant;
  final Color onSurfaceDim;
  final Color outlineVariant;
  final Color error;
  final Color success;

  // Chart colors
  final Color chartPurple;
  final Color chartCyan;
  final Color chartPink;
  final Color chartOrange;

  const DailyDashColorScheme({
    required this.background,
    required this.surface,
    required this.surfaceContainer,
    required this.surfaceContainerLow,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
    required this.surfaceVariant,
    required this.primary,
    required this.primaryContainer,
    required this.primaryDim,
    required this.secondary,
    required this.secondaryContainer,
    required this.onSurface,
    required this.onSurfaceVariant,
    required this.onSurfaceDim,
    required this.outlineVariant,
    required this.error,
    required this.success,
    required this.chartPurple,
    required this.chartCyan,
    required this.chartPink,
    required this.chartOrange,
  });

  // The "Neon Nocturne" Dark Theme
  factory DailyDashColorScheme.dark() => const DailyDashColorScheme(
    // Surface hierarchy - True Black foundation
    background: Color(0xFF0E0E0E),
    surface: Color(0xFF0E0E0E),
    surfaceContainer: Color(0xFF191919),
    surfaceContainerLow: Color(0xFF1A1A1A),
    surfaceContainerHigh: Color(0xFF262626),
    surfaceContainerHighest: Color(0xFF2E2E2E),
    surfaceVariant: Color(0xFF1E1E1E),

    // Primary - Electric Purple
    primary: Color(0xFFDB90FF),
    primaryContainer: Color(0xFFD37BFF),
    primaryDim: Color(0xFFB86FE0),

    // Secondary - Cyan
    secondary: Color(0xFF04C4FE),
    secondaryContainer: Color(0xFF0A3D4F),

    // Text colors
    onSurface: Color(0xFFE8E8E8),
    onSurfaceVariant: Color(0xFFABABAB),
    onSurfaceDim: Color(0xFF6B6B6B),

    // Outlines - Ghost borders
    outlineVariant: Color(0xFF404040),

    // Status colors
    error: Color(0xFFFF6E84),
    success: Color(0xFF04C4FE),

    // Chart colors
    chartPurple: Color(0xFFDB90FF),
    chartCyan: Color(0xFF04C4FE),
    chartPink: Color(0xFFFF6B9D),
    chartOrange: Color(0xFFFFB347),
  );

  // Light Theme
  factory DailyDashColorScheme.light() => const DailyDashColorScheme(
    // Surface hierarchy - Clean White foundation
    background: Color(0xFFF5F5F7),
    surface: Color(0xFFFFFFFF),
    surfaceContainer: Color(0xFFF0F0F2),
    surfaceContainerLow: Color(0xFFFFFFFF),
    surfaceContainerHigh: Color(0xFFE8E8EC),
    surfaceContainerHighest: Color(0xFFDDDDE2),
    surfaceVariant: Color(0xFFF0F0F5),

    // Primary - Electric Purple (slightly adjusted for light)
    primary: Color(0xFFB060E0),
    primaryContainer: Color(0xFFD37BFF),
    primaryDim: Color(0xFF9050C0),

    // Secondary - Cyan
    secondary: Color(0xFF0099CC),
    secondaryContainer: Color(0xFFE0F7FF),

    // Text colors
    onSurface: Color(0xFF1A1A1A),
    onSurfaceVariant: Color(0xFF555555),
    onSurfaceDim: Color(0xFF888888),

    // Outlines
    outlineVariant: Color(0xFFD0D0D0),

    // Status colors
    error: Color(0xFFE53E5E),
    success: Color(0xFF0099CC),

    // Chart colors
    chartPurple: Color(0xFFB060E0),
    chartCyan: Color(0xFF0099CC),
    chartPink: Color(0xFFE5507D),
    chartOrange: Color(0xFFE59030),
  );
}

class DailyDashTheme {
  static ThemeData get darkTheme {
    final colors = DailyDashColorScheme.dark();
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: colors.background,
      colorScheme: ColorScheme.dark(
        surface: colors.surface,
        primary: colors.primary,
        primaryContainer: colors.primaryContainer,
        secondary: colors.secondary,
        secondaryContainer: colors.secondaryContainer,
        onSurface: colors.onSurface,
        onSurfaceVariant: colors.onSurfaceVariant,
        outline: colors.outlineVariant,
        error: colors.error,
      ),
      textTheme: GoogleFonts.plusJakartaSansTextTheme(
        ThemeData.dark().textTheme,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.surfaceContainerLow,
        selectedItemColor: colors.primary,
        unselectedItemColor: colors.onSurfaceDim,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
    );
  }

  static ThemeData get lightTheme {
    final colors = DailyDashColorScheme.light();
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: colors.background,
      colorScheme: ColorScheme.light(
        surface: colors.surface,
        primary: colors.primary,
        primaryContainer: colors.primaryContainer,
        secondary: colors.secondary,
        secondaryContainer: colors.secondaryContainer,
        onSurface: colors.onSurface,
        onSurfaceVariant: colors.onSurfaceVariant,
        outline: colors.outlineVariant,
        error: colors.error,
      ),
      textTheme: GoogleFonts.plusJakartaSansTextTheme(
        ThemeData.light().textTheme,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.surfaceContainerLow,
        selectedItemColor: colors.primary,
        unselectedItemColor: colors.onSurfaceDim,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
    );
  }
}
