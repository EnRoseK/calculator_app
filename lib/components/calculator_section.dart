import 'package:calculator_app/components/calculator_row.dart';
import 'package:calculator_app/data/layout.dart';
import 'package:flutter/material.dart';

class CalculatorSection extends StatelessWidget {
  const CalculatorSection({super.key});

  final String calculationString = "6,291÷5";
  final String resultString = "1,258.2";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Opacity(
            opacity: 0.4,
            child: Text(
              calculationString,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w300,
                fontFamily: "Work Sans",
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            resultString,
            style: const TextStyle(
              fontFamily: "Work Sans",
              fontSize: 96,
              fontWeight: FontWeight.w300,
              height: 1,
            ),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...layout.map(
                  (element) {
                    return CalculatorRow(items: element);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
