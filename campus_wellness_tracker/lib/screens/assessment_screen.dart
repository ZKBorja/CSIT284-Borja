import 'package:flutter/material.dart';
import 'package:campus_wellness_tracker/data/questions.dart';
import 'package:campus_wellness_tracker/models/question.dart';
import 'package:campus_wellness_tracker/widgets/question_display.dart';
import 'package:campus_wellness_tracker/widgets/answer_button.dart';

class AssessmentScreen extends StatefulWidget {
  final Function(int) onFinish;

  const AssessmentScreen({super.key, required this.onFinish});

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  int currentQuestionIndex = 0;
  int runningScore = 0;

  void selectAnswer(int score) {
    runningScore = runningScore + score;

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      widget.onFinish(runningScore);
    }
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = questions[currentQuestionIndex];
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    
    Widget questionWidget = QuestionDisplay(
      text: currentQuestion.text,
      currentNumber: currentQuestionIndex + 1,
      totalNumber: questions.length,
    );

    
    List<Widget> answerButtons = [];
    for (int i = 0; i < currentQuestion.options.length; i++) {
      Option opt = currentQuestion.options[i];
      answerButtons.add(
        AnswerButton(
          text: opt.text,
          onTap: () {
            selectAnswer(opt.score);
          },
        ),
      );
    }

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: isLandscape
            ? Row(
                children: [
                  Expanded(child: questionWidget),
                  const SizedBox(width: 20),
                  Expanded(child: Column(children: answerButtons)),
                ],
              )
            : Column(
                children: [
                  questionWidget,
                  const SizedBox(height: 20),
                  Column(children: answerButtons),
                ],
              ),
      ),
    );
  }
}