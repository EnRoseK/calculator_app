import 'package:calculator_app/components/calculator_section.dart';
import 'package:calculator_app/components/theme_changer.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 16,
            left: 20,
            right: 20,
            bottom: 30,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ThemeChanger(),
                SizedBox(height: 55),
                Expanded(
                  child: CalculatorSection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
