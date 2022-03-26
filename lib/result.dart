import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resScore;
  const Result({Key? key, required this.resScore}) : super(key: key);

  String get resultPhrase {
    if (resScore > 10) {
      return "Well done. Score: " + resScore.toString();
    }
    return "Amazing. Score: " + resScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
