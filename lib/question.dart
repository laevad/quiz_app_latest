import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;
  const Question({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 28),
      ),
    );
  }
}
