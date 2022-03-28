import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function _resetQuestEvent;
  final int _totalScore;
  const Result(this._resetQuestEvent, this._totalScore, {Key? key})
      : super(key: key);

  String get resultTotalScore {
    if (_totalScore >= 20) {
      return 'Well done. Your Score: ' + _totalScore.toString();
    }
    return 'better luck next time. Your Score: ' + _totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            resultTotalScore,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          ElevatedButton(
            onPressed: () => _resetQuestEvent(),
            child: const Text('Reset Quiz'),
          )
        ],
      ),
    );
  }
}
