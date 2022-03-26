import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer");
  }

  @override
  Widget build(BuildContext context) {
    var question = ["fav color?", "fav fruit"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Text('Question'),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 0'),
            )
          ],
        ),
      ),
    );
  }
}
