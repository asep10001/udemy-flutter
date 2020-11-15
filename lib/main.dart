import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 8},
        {'text': 'Red', 'score': 7},
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 3},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 10},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1}
      ],
    },
  ];
  String answer = '';
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _totalScore+=score;
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
// This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First App',
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
