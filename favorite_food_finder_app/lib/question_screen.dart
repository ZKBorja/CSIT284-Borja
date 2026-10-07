import 'package:flutter/material.dart';
import 'package:favorite_food_finder_app/data/questions.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    this.onSelectChoice,
  });

  final void Function(String choice)? onSelectChoice;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void choiceQuestion(String selectedChoice) {
    widget.onSelectChoice?.call(selectedChoice);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 35),
            ...currentQuestion.getShuffledAnswers().map((choice) {
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  onPressed: () {
                    choiceQuestion(choice);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 30, 41, 59),
                    foregroundColor: const Color.fromARGB(255, 241, 245, 249),
                    side: const BorderSide(
                      color: Color.fromARGB(80, 148, 163, 184),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 20,
                    ),
                  ),
                  child: Text(
                    choice,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}