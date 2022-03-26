import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resScore;
  final Function resetQuiz;
  const Result({Key? key, required this.resScore, required this.resetQuiz})
      : super(key: key);

  String get resultPhrase {
    if (resScore > 10) {
      return "Well done. Score: " + resScore.toString();
    }
    return "Amazing. Score: " + resScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () => resetQuiz(),
            child: const Text(
              "Rest Quiz",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
