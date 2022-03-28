import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerEvent;
  final List<Map<String, Object>> _questions;
  final int _questionCounter;
  const Answer(this._questions, this._answerEvent, this._questionCounter,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...(_questions[_questionCounter]['answerText']
                as List<Map<String, Object>>)
            .map(
              (answer) => Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _answerEvent(answer['score']),
                  child: Text(answer['text'].toString()),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
