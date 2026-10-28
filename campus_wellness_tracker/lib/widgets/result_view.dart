import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  final int score;
  final String classification;
  final String recommendation;

  const ResultView({
    super.key,
    required this.score,
    required this.classification,
    required this.recommendation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Your Wellness Score: $score',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text('Classification:'),
            Text(
              classification,
              style: const TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text('Recommendation:'),
            Text(
              recommendation,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}