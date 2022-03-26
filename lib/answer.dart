import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;
  const Answer(
      {Key? key, required this.answerHandler, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
      child: ElevatedButton(
        onPressed: () => answerHandler(),
        child: Text(answerText),
      ),
    );
  }
}
