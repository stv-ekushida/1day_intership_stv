import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final instance = AppTheme._();

  static const Color primaryColor = Colors.blue;
  static const Color genreColor = Colors.grey;

  static const genreStyle = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    color: genreColor,
  );

  static const shopStyle = TextStyle(
    fontSize: 24,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  );

  static const overlineStyle = TextStyle(
    fontSize: 10,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
  );

  ThemeData themeData() {
    return ThemeData(
      primaryColor: primaryColor,
    );
  }
}
