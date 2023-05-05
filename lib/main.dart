import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionCount = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      "questionText": 'Who?',
      "answers": [
        {"answer": "he", "score": 0},
        {"answer": "she", "score": 2}
      ]
    },
    {
      "questionText": 'Where?',
      "answers": [
        {"answer": "forest", "score": 0},
        {"answer": "sea", "score": 3},
        {"answer": "vulcano", "score": 0}
      ]
    },
    {
      "questionText": 'Whom?',
      "answers": [
        {"answer": "him", "score": 2},
        {"answer": "her", "score": 2}
      ]
    },
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() => _questionCount++);
    if (_questionCount < _questions.length) {
      print("Have more questions");
    } else {
      print("Have no question!");
    }
  }

  void _restart(){
    setState(() {
      _questionCount = 0;
    _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: _questionCount < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionCount)
            : Result(_totalScore,_restart),
      ),
    );
  }
}
