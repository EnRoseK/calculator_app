import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum CalculatorButtonStyle { primary, secondary, tertiary }

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.style,
    this.text,
    this.icon,
  });

  final String? text;
  final String? icon;
  final CalculatorButtonStyle style;

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = style == CalculatorButtonStyle.primary
        ? Theme.of(context).colorScheme.primary
        : style == CalculatorButtonStyle.secondary
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.tertiary;
    final Color textColor = style == CalculatorButtonStyle.primary
        ? Theme.of(context).colorScheme.onPrimary
        : style == CalculatorButtonStyle.secondary
            ? Theme.of(context).colorScheme.onSecondary
            : Theme.of(context).colorScheme.onTertiary;
    final Color splashColor = style == CalculatorButtonStyle.primary
        ? Theme.of(context).colorScheme.onPrimary.withOpacity(0.1)
        : style == CalculatorButtonStyle.secondary
            ? Theme.of(context).colorScheme.onSecondary.withOpacity(0.1)
            : Theme.of(context).colorScheme.onTertiary.withOpacity(0.1);

    Widget? child;

    if (text != null) {
      child = Text(
        text!,
        style: TextStyle(
          fontSize: 32,
          fontFamily: "Work Sans",
          color: textColor,
        ),
      );
    }

    if (icon != null) {
      child = SvgPicture.asset(
        icon!,
        width: 32,
        height: 32,
        colorFilter: ColorFilter.mode(textColor, BlendMode.srcIn),
      );
    }

    return Container(
      width: 87,
      height: 87,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: backgroundColor,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(24),
          splashColor: splashColor,
          highlightColor: splashColor,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
