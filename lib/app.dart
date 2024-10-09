import 'package:calculator_app/providers/theme_provider.dart';
import 'package:calculator_app/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Work Sans",
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFF1F2F3),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF4B5EFC),
          onPrimary: Colors.white,
          secondary: Color(0xFFD2D3DA),
          onSecondary: Colors.black,
          tertiary: Colors.white,
          onTertiary: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
      ),
      darkTheme: ThemeData(
        fontFamily: "Work Sans",
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF17171C),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF4B5EFC),
          onPrimary: Colors.white,
          secondary: Color(0xFF4E505F),
          onSecondary: Colors.white,
          tertiary: Color(0xFF2E2F38),
          onTertiary: Colors.white,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      themeMode: context.watch<ThemeProvider>().themeMode,
      home: const MainScreen(),
    );
  }
}
