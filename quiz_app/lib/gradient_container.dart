import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

  class GradientContainer extends StatelessWidget{
    const GradientContainer({super.key});

    @override
    Widget build(context){
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
        ),
        child: const Center(
        child: StartScreen(),
        ),
      );
    }
  }