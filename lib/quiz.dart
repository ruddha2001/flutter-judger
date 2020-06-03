import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int index;
  final List<Map> qMap;

  Quiz({@required this.answerQuestion,@required this.qMap,@required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Question(questionText: qMap[index]['questionText']),
        ...qMap[index]["answer"].map((answer) {
          return Answer(()=>answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
