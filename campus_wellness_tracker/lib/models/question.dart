class Option {
  final String text;
  final int score;

  Option(this.text, this.score);
}

class Question {
  final String text;
  final List<Option> options;

  Question(this.text, this.options);
}