import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 280,
            color: const Color.fromARGB(180, 224, 242, 254),
          ),
          const SizedBox(height: 70),
          const Text(
            'Flutter Knowledge Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Test how well you know Flutter basics!',
            style: TextStyle(
              color: Color.fromARGB(255, 148, 163, 184),
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 35),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 14, 116, 144),
              foregroundColor: Colors.white,
              elevation: 4,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            icon: const Icon(Icons.play_arrow_rounded),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}