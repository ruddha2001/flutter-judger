import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _answerQuestion(int score) {
    setState(() {
      _index = _index + 1;
      _totalScore += score;
    });
    print(_index);
  }

  void _resetQuiz() {
    setState(() {
      _index=0;
      _totalScore=0;
    });
  }

  int _totalScore =0;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    List<Map> _qMap = [
      {
        'questionText': "What's your favorite color?",
        "answer": [
          {"text": "Red", "score": 10},
          {"text": "Blue", "score": 7},
          {"text": "Black", "score": 10},
          {"text": "Magenta", "score": 5},
        ],
      },
      {
        'questionText': "What's your favorite animal?",
        "answer": [
          {"text": "Lion", "score": 10},
          {"text": "Monkey", "score": 6},
          {"text": "Tiger", "score": 10},
          {"text": "Hippo", "score": 8},
        ],
      },
      {
        'questionText': "What's your favorite city?",
        "answer": [
          {"text": "Delhi", "score": 9},
          {"text": "Kolkata", "score": 10},
          {"text": "London", "score": 8},
          {"text": "Honolulu", "score": 0},
        ],
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Judger"),
            ),
            body: (_index < _qMap.length)
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    qMap: _qMap,
                    index: _index,
                  )
                : Result(score: _totalScore,resetQuiz: _resetQuiz,)));
  }
}
