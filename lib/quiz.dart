import 'package:first_app/answer.dart';
import 'package:first_app/questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;

  final Function answerQuestions;

  Quiz(
      {@required this.questions, @required this.answerQuestions, @required this.questionIndex});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Questions(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((e) => Answer(answerQuestions, e))
            .toList(),
      ]),
    );
  }
}
