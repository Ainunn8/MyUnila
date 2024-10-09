import 'package:flutter/material.dart';
import 'homepage.dart';
import 'qs_world_university.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light; // Default adalah light mode

  void _changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info',
      theme: ThemeData.light(), // Tema untuk light mode
      darkTheme: ThemeData.dark(), // Tema untuk dark mode
      themeMode: _themeMode, // Menggunakan tema berdasarkan _themeMode
      home: HomePage(onThemeChanged: _changeTheme), // Melewatkan _changeTheme sebagai onThemeChanged
    );
  }
}
