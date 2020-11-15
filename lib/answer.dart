import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestions;
  final String answerText;
  Answer(this.answerQuestions, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightBlueAccent,
        textColor: Colors.black87,
        onPressed: ()=> answerQuestions(),
        child: Text(
          answerText,
        ),
      ),
    );
  }
}
