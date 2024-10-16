import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider({this.themeMode = ThemeMode.light});

  ThemeMode themeMode;

  void toggleTheme() async {
    themeMode = themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
