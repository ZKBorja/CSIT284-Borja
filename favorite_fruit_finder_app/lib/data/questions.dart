class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

const questions = [
  QuizQuestion(
    'What flavor do you enjoy most? ',
    [
      'Sweet',
      'Salty',
      'Spicy',
      'Sour',
    ],
  ),
  QuizQuestion(
    'Which snack would you choose?',
    [
      'Cake',
      'Fries',
      'Nachos',
      'Fruit',
    ],
  ),
  QuizQuestion(
    'What would you most likely order at a restaurant?',
    [
      'Dessert',
      'Burger',
      'Chicken Wings',
      'Salad',
    ],
  ),
  QuizQuestion(
    'Which food would you choose when your feeling down?',
    [
      'Ice Cream',
      'Spicy Wings',
      'Fruit Bowl',
      'Potato Chips',
    ],
  ),
];