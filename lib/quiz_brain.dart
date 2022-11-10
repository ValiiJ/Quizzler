import 'question.dart';

class QuizBrain {
  int questionNumber = 0;

  List<Question> questionBank = [
    Question(
      questionText: 'You can lead a cow down stairs but not up stairs.',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Approximately one quarted of human boens are in the feet',
      questionAnswer: true,
    ),
    Question(
      questionText: 'A slug\'s blood is green.',
      questionAnswer: true,
    ),
    Question(
        questionText: 'The Mona Liza was stolen from the Louvre in 1911',
        questionAnswer: true),
    Question(
        questionText: 'Electrons move faster than the speed of light',
        questionAnswer: false),
    Question(questionText: 'Peanuts are not nuts!', questionAnswer: true),
    Question(
        questionText: 'Muddy York is a nickname for New York in the Winter',
        questionAnswer: false),
    Question(questionText: 'Emus can’t fly', questionAnswer: true),
    Question(
        questionText: 'The human body has four lungs.', questionAnswer: false),
    Question(
        questionText:
            'The average human sneeze can be clocked at 100 miles an hour',
        questionAnswer: true),
    Question(
        questionText: 'Aladdin\'s character was based on Brad Pitt',
        questionAnswer: false),
    Question(
        questionText: 'Cheesecake comes from Italy', questionAnswer: false),
    Question(
        questionText:
            'Brazil is the only nation to have played in every World Cup finals tournament',
        questionAnswer: true),
    Question(
        questionText:
            'Brazil is the only nation to have played in every World Cup finals tournament',
        questionAnswer: true),
    Question(
        questionText: 'Melbourne is the capital of Australia',
        questionAnswer: false),
    Question(questionText: 'Vatican City is a country', questionAnswer: true),
    Question(
        questionText: 'Google was initially called BackRub',
        questionAnswer: true),
  ];

  void nextQuestion() {
    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
    }
  }

  String getQuestionText() {
    return questionBank[questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return questionBank[questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (questionNumber >= questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }
}
