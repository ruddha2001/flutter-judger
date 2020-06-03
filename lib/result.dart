import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result({@required this.score, @required this.resetQuiz});

  String get resultPhrase {
    return (score > 24)
        ? "You are awesome"
        : (score > 12) ? "You are somewhat cool" : "I don't like you";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            RaisedButton.icon(
                onPressed: resetQuiz,
                icon: Icon(Icons.refresh),
                label: Text("Restart"))
          ]),
    );
  }
}
