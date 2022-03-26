import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answer;
  const Answer({Key? key, required this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () => answer(),
        child: Text('Answer'),
      ),
    );
  }
}
