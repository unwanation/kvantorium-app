import 'package:flutter/material.dart';

class PreviousLesson extends StatelessWidget {
  final int number;
  final String name;

  const PreviousLesson({super.key, required this.number, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/lesson');
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Text(
              'Урок $number. ',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
