import 'package:flutter/material.dart';
import 'widgets/expenses.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: myTheme,
      darkTheme: myDarkTheme,
      themeMode: ThemeMode.system,
      home: const Expenses(),
    );
  }
}
