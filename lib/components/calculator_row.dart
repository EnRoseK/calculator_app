import 'package:calculator_app/components/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorRow extends StatelessWidget {
  const CalculatorRow({
    super.key,
    required this.items,
  });

  final List<Map<String, Object>> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...items.map((item) {
          return CalculatorButton(
            style: item["style"] as CalculatorButtonStyle,
            text: item["text"] == null ? null : item["text"] as String,
            icon: item["icon"] == null ? null : item["icon"] as String,
          );
        })
      ],
    );
  }
}
