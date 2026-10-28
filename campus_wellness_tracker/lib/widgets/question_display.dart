import 'package:flutter/material.dart';

class QuestionDisplay extends StatelessWidget {
  final String text;
  final int currentNumber;
  final int totalNumber;

  const QuestionDisplay({
    super.key,
    required this.text,
    required this.currentNumber,
    required this.totalNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Question $currentNumber of $totalNumber',
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}