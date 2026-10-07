import 'package:flutter/material.dart';
import 'package:favorite_food_finder_app/results.dart';
import 'package:favorite_food_finder_app/start_screen.dart';
import 'package:favorite_food_finder_app/question_screen.dart';
import 'package:favorite_food_finder_app/data/questions.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() {
    return _GradientContainerState();
  }
}

class _GradientContainerState extends State<GradientContainer> {
  List<String> selectedChoices = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseChoice(String choice) {
    selectedChoices.add(choice);

    if (selectedChoices.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedChoices = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectChoice: chooseChoice,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenChoices: selectedChoices,
        onRestart: restartQuiz,
      );
    }

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 15, 23, 42),
            Color.fromARGB(255, 30, 58, 110),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: screenWidget,
      ),
    );
  }
}