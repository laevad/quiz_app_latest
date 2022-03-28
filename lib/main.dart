import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionCounter = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "fav color?",
      "answerText": [
        {"text": "blue", "score": 10},
        {"text": "red", "score": 8},
        {"text": "orange", "score": 4},
      ]
    },
    {
      "questionText": "fav fruit?",
      "answerText": [
        {"text": "orange", "score": 10},
        {"text": "apple", "score": 8},
      ],
    },
  ];
  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionCounter++;
    });
    debugPrint("current index: " + _questionCounter.toString());
    debugPrint("TotalScore update: " + _totalScore.toString());
  }

  void _resetQuest() {
    setState(() {
      _questionCounter = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionCounter < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionCounter)
            : Result(_resetQuest, _totalScore),
      ),
    );
  }
}
