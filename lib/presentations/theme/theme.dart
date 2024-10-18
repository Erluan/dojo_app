import 'package:flutter/material.dart';

class AppTheme {
  final typography = Typography.material2021();
  final seedColor = const Color(0xFFb8daf5);

  ///
  /// LIGHT THEME
  ///
  ThemeData get lightTheme {
    final theme = ThemeData.light();

    final textTheme = _textTheme(false);

    return ThemeData(
      useMaterial3: true,
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: Brightness.light,
        onBackground: const Color(0xFF6ab1f6)
      ),
      brightness: Brightness.light,
      primaryColor:  const Color(0xFF800080),
      scaffoldBackgroundColor: const Color(0xFF15131C),
      appBarTheme: AppBarTheme(
        backgroundColor: seedColor,
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Color(0xFF15131C),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: seedColor,
      )
    );
  }

  TextTheme _textTheme(bool isDarkTheme) {

    if(isDarkTheme) {
      final baseTextTheme =
      typography.englishLike.merge(typography.black.copyWith(
        headlineSmall: TextStyle(color: Colors.black.withOpacity(.8)),
        headlineMedium: TextStyle(color: Colors.black.withOpacity(.8)),
      ));

      return baseTextTheme;
    }

    final baseTextTheme =
    typography.englishLike.merge(typography.white.copyWith(
      headlineSmall: TextStyle(color: Colors.white.withOpacity(.8)),
      headlineMedium: TextStyle(color: Colors.white.withOpacity(.8)),
    ));

    return baseTextTheme;
  }
}