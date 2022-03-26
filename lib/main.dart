import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'question': "fav color?",
        "answer": ['red', 'blue', 'violet']
      },
      {
        "question": "fav fruit",
        "answer": ["mango", "strawberry"]
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Column(
          children: [
            Question(text: question[_questionIndex]["question"].toString()),
            ...(question[_questionIndex]["answer"] as List<String>)
                .map(
                  (answer) => Answer(
                    answerHandler: answerQuestion,
                    answerText: answer,
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
