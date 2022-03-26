import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = ["fav color?", "fav fruit"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Question(text: question[_questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 0'),
            )
          ],
        ),
      ),
    );
  }
}
