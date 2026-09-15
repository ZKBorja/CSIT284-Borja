import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz Completed!',
              style: const TextStyle(
                color: Color.fromARGB(255, 148, 163, 184),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'You scored $numCorrectQuestions / $numTotalQuestions correctly',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 380,
              child: SingleChildScrollView(
                child: Column(
                  children: summaryData.map((data) {
                    final isCorrect =
                        data['user_answer'] == data['correct_answer'];

                    return Container(
                      margin: const EdgeInsets.only(bottom: 14),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(90, 30, 41, 59),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: isCorrect
                                  ? const Color.fromARGB(255, 52, 211, 153)
                                  : const Color.fromARGB(255, 248, 113, 113),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              ((data['question_index'] as int) + 1).toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 15, 23, 42),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data['question'] as String,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  data['user_answer'] as String,
                                  style: TextStyle(
                                    color: isCorrect
                                        ? const Color.fromARGB(255, 52, 211, 153)
                                        : const Color.fromARGB(255, 248, 113, 113),
                                    fontSize: 13,
                                  ),
                                ),
                                if (!isCorrect)
                                  Text(
                                    data['correct_answer'] as String,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 52, 211, 153),
                                      fontSize: 13,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton.icon(
              onPressed: onRestart,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 14, 116, 144),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              icon: const Icon(Icons.replay_rounded),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}