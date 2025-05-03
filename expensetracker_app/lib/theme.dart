import 'package:flutter/material.dart';

final myTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 220, 50, 50),
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 220, 50, 50),
    foregroundColor: Colors.white,
    elevation: 2,
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 4,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),
  snackBarTheme: const SnackBarThemeData(
    backgroundColor: Color.fromARGB(255, 180, 40, 40),
    contentTextStyle: TextStyle(color: Colors.white),
    actionTextColor: Colors.white70,
  ),
  textTheme: ThemeData.light().textTheme.copyWith(
    titleLarge: const TextStyle(
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 220, 50, 50),
      fontSize: 20,
    ),
    bodyMedium: const TextStyle(color: Color.fromARGB(255, 50, 50, 50)),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
);
final myDarkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 220, 50, 50),
    brightness: Brightness.dark,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 180, 40, 40),
    foregroundColor: Colors.white,
    elevation: 2,
  ),
  cardTheme: CardTheme(
    color: const Color.fromARGB(255, 30, 30, 30),
    elevation: 4,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),
  snackBarTheme: const SnackBarThemeData(
    backgroundColor: Color.fromARGB(255, 180, 40, 40),
    contentTextStyle: TextStyle(color: Colors.white),
    actionTextColor: Colors.white70,
  ),
  textTheme: ThemeData.dark().textTheme.copyWith(
    titleLarge: const TextStyle(
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 255, 100, 100),
      fontSize: 20,
    ),
    bodyMedium: const TextStyle(color: Color.fromARGB(255, 220, 220, 220)),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
);
