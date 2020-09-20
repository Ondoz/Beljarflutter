import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestionUp() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _answerQuestionDown() {
    setState(() {
      _questionIndex = _questionIndex - 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',
      'what\'s your favorite animals?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Anwer 1'),
              onPressed: _answerQuestionUp,
            ),
            RaisedButton(
              child: Text('Anwer 2'),
              onPressed: _answerQuestionDown,
            ),
            RaisedButton(
              child: Text('Anwer 3'),
              onPressed: () {
                print('answers 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
