import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onStart;

  const HomeScreen({super.key, required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.favorite, size: 60, color: Colors.teal),
            const SizedBox(height: 15),
            const Text(
              'Campus Wellness Tracker',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Evaluate your current study-life balance.',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 25),

            
            const Card(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text('Borja, Zidane Kristoff P.', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('BSIT-3'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: onStart,
              child: const Text('Start Assessment'),
            ),
          ],
        ),
      ),
    );
  }
}