import 'package:campus_wellness_tracker/models/question.dart';

List<Question> questions = [
  Question(
    'How many hours do you typically sleep?',
    [
      Option('Less than 4 hours', 1),
      Option('4 to 6 hours', 2),
      Option('7 to 8 hours', 4),
      Option('More than 8 hours', 5),
    ],
  ),
  Question(
    'How many glasses of water do you drink a day?',
    [
      Option('Less than 2 glasses', 1),
      Option('3 to 5 glasses', 2),
      Option('6 to 8 glasses', 4),
      Option('More than 8 glasses', 5),
    ],
  ),
  Question(
    'How do you feel about your coursework and assignments?',
    [
      Option('Very overwhelmed', 1),
      Option('A bit stressed', 2),
      Option('Manageable', 4),
      Option('Relaxed and easy', 5),
    ],
  ),
  Question(
    'How often do you exercise or walk?',
    [
      Option('Never', 1),
      Option('Once a week', 2),
      Option('2 to 3 times a week', 4),
      Option('Almost daily', 5),
    ],
  ),
  Question(
    'Do you take breaks while studying?',
    [
      Option('No, I study straight through', 1),
      Option('Only when I get a headache', 2),
      Option('Yes, short breaks every hour', 4),
      Option('Yes, I follow a study schedule', 5),
    ],
  ),
];