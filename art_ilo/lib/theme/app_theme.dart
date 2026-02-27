import 'package:flutter/material.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final Color background;
  final Color primaryText;
  final Color secondaryText;
  final Color border;
  final Color card;

  const AppTheme({
    required this.background,
    required this.primaryText,
    required this.secondaryText,
    required this.border,
    required this.card,
  });

  static const light = AppTheme(
    background: Color(0xFFF6F2F0),
    primaryText: Color(0xFF1A1A1A),
    secondaryText: Color(0xFF5C5C5C),
    border: Color(0xFFE0DCD9),
    card: Color(0xFFFFFFFF),
  );

  static const dark = AppTheme(
    background: Color(0xFF2D2D2D),
    primaryText: Color(0xFFFFFFFF),
    secondaryText: Color(0xFFB3B3B3),
    border: Color(0xFF2A2A2A),
    card: Color(0xFF1E1E1E),
  );

  @override
  AppTheme copyWith({
    Color? background,
    Color? primaryText,
    Color? secondaryText,
    Color? border,
    Color? card,
  }) {
    return AppTheme(
      background: background ?? this.background,
      primaryText: primaryText ?? this.primaryText,
      secondaryText: secondaryText ?? this.secondaryText,
      border: border ?? this.border,
      card: card ?? this.card,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this;
    return AppTheme(
      background: Color.lerp(background, other.background, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      border: Color.lerp(border, other.border, t)!,
      card: Color.lerp(card, other.card, t)!,
    );
  }
}

ThemeData createTheme({required bool isDark}) {
  final theme = isDark ? AppTheme.dark : AppTheme.light;
  final brightness = isDark ? Brightness.dark : Brightness.light;

  final baseScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF1F3C3B),
    brightness: brightness,
    primary: const Color(0xFF1F3C3B),
  );

  return ThemeData(
    useMaterial3: true,
    brightness: brightness,
    scaffoldBackgroundColor: theme.background,
    colorScheme: baseScheme.copyWith(
      onSurface: theme.primaryText,
      onSurfaceVariant: theme.secondaryText,
      outline: theme.border,
      surface: theme.card,
      surfaceTint: Colors.transparent,
    ),
    cardColor: theme.card,

    cardTheme: CardThemeData(
      color: theme.card,
      elevation: 0.0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: theme.border, width: 1),
      ),
      clipBehavior: Clip.antiAlias,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
    ),

    textTheme: TextTheme(bodyLarge: TextStyle(color: theme.primaryText)),
    extensions: <ThemeExtension<dynamic>>[theme],
  );
}
