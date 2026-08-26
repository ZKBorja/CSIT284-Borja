import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key});

@override
Widget build(context){

  return Center(
  child: Column(

      children: [
        Image.asset(
          'assets/logo.png',
          width: 300,
        ),

        const SizedBox(height: 80),
        const Text(
          'Learn Flutter in a fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
             ),
          ),

        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: () {},
           style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.white),
          ),
    child: const Text('Start Quiz'),
          ),
      ],
    ),
  );
}
}