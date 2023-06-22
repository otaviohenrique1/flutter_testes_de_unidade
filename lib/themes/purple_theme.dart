import 'package:flutter/material.dart';
import 'package:flutter_testes_de_unidade/themes/theme_colors.dart';

ThemeData purpleTheme = ThemeData(
  primaryColor: ThemeColors.primary,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: ThemeColors.primary,
    brightness: Brightness.dark,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
  ),
  fontFamily: 'Raleway',
);
