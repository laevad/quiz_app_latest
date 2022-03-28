import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final Function _answerEvent;
  final List<Map<String, Object>> _questions;
  final int _questionCounter;
  const Quiz(
    this._answerEvent,
    this._questions,
    this._questionCounter, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          _questions,
          _questionCounter,
        ),
        Answer(
          _questions,
          _answerEvent,
          _questionCounter,
        )
      ],
    );
  }
}
