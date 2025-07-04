import 'package:flutter/material.dart';

const primaryColor = Color(0xFFF82B10);
final themeData = ThemeData();
final darkTheme = ThemeData(
    primaryColor: primaryColor,
    useMaterial3: true,
    textTheme: textTheme,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor, brightness: Brightness.dark));
final lightTheme = ThemeData(
    primaryColor: primaryColor,
    useMaterial3: true,
    textTheme: textTheme,
    scaffoldBackgroundColor: const Color(0xFFEFF1F3),
    dividerTheme: DividerThemeData(color: Colors.grey.withOpacity(0.1)),
    colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor, brightness: Brightness.light));
final textTheme = TextTheme(
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w600));
