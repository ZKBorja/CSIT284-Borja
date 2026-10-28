import 'package:flutter/material.dart';
import 'package:campus_wellness_tracker/screens/home_screen.dart';
import 'package:campus_wellness_tracker/screens/assessment_screen.dart';
import 'package:campus_wellness_tracker/screens/results_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String currentScreen = 'home';
  int userScore = 0;

  void startAssessment() {
    setState(() {
      currentScreen = 'assessment';
    });
  }

  void finishAssessment(int score) {
    setState(() {
      userScore = score;
      currentScreen = 'results';
    });
  }

  void restartAssessment() {
    setState(() {
      userScore = 0;
      currentScreen = 'home';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeWidget = HomeScreen(onStart: startAssessment);

    if (currentScreen == 'assessment') {
      activeWidget = AssessmentScreen(onFinish: finishAssessment);
    } else if (currentScreen == 'results') {
      activeWidget = ResultsScreen(
        score: userScore,
        onRestart: restartAssessment,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Wellness Tracker',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Campus Wellness Tracker'),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: activeWidget),
      ),
    );
  }
}
