import 'package:flutter/material.dart';

class TextPill extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;

  const TextPill(this.text,
      {super.key, required this.color, this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}
