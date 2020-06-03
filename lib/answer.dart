import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;

  Answer(this.answerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          this.answerText
        ),
        onPressed: this.answerQuestion,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
