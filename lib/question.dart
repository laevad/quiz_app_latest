import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final int _questionCounter;
  const Question(
    this._questions,
    this._questionCounter, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      child: Text(
        _questions[_questionCounter]['questionText'].toString(),
        style: const TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
