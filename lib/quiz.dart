import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQuestion;
  final int questionIndex;
  const Quiz({
    Key? key,
    required this.question,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(text: question[questionIndex]["question"].toString()),
        ...(question[questionIndex]["answer"] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                answerHandler: () => answerQuestion(answer["score"]),
                answerText: answer['text'].toString(),
              ),
            )
            .toList(),
      ],
    );
  }
}
