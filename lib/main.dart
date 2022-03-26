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
  var _questionIndex = 0;
  var _totalScore = 0;

  void answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'question': "fav color?",
        "answer": [
          {"text": 'red', "score": 5},
          {"text": 'blue', "score": 8},
          {"text": 'green', "score": 10},
        ]
      },
      {
        "question": "fav fruit",
        "answer": [
          {"text": "mango", "score": 3},
          {"text": "strawberry", "score": 5},
        ]
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: _questionIndex < question.length
            ? Quiz(
                question: question,
                answerQuestion: answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(resScore: _totalScore, resetQuiz: resetQuiz),
      ),
    );
  }
}
