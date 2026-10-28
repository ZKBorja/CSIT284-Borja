import 'package:flutter/material.dart';
import 'package:campus_wellness_tracker/widgets/result_view.dart';

class ResultsScreen extends StatelessWidget {
  final int score;
  final VoidCallback onRestart;

  const ResultsScreen({
    super.key,
    required this.score,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
    String classification = '';
    String recommendation = '';

    
    if (score >= 18) {
      classification = 'Healthy Balance';
      recommendation = 'Keep maintaining your current habits!';
    } else if (score >= 12) {
      classification = 'Moderate Wellness Habits';
      recommendation = 'Try getting more sleep and staying hydrated.';
    } else {
      classification = 'Needs Improvement';
      recommendation = 'Take regular breaks and reduce your study stress.';
    }

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ResultView(
              score: score,
              classification: classification,
              recommendation: recommendation,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onRestart,
              child: const Text('Restart Assessment'),
            ),
          ],
        ),
      ),
    );
  }
}