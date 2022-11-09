import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 60, 59, 59),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizzPage(),
          ),
        ),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  const QuizzPage({super.key});

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  List<Widget> scoreKeeper = [];

  int questionsNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.questionBank[questionsNumber].questionText,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              child: const Text(
                'True',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.green,
                ),
              ),
              onPressed: () {
                bool correctAnswer =
                    quizBrain.questionBank[questionsNumber].questionAnswer;
                if (correctAnswer == true) {
                  print('User got it right');
                } else {
                  print('User got it wrong');
                }

                setState(() {
                  questionsNumber++;
                });
                print(questionsNumber);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                bool correctAnswer =
                    quizBrain.questionBank[questionsNumber].questionAnswer;
                if (correctAnswer == false) {
                  print('User got it right');
                } else {
                  print('User got it wrong');
                }
                setState(() {
                  questionsNumber++;
                });
                print(questionsNumber);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
