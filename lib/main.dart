import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen');
  }

  @override
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorie color?",
      "What's your favorite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text('The Questions'),
            RaisedButton(
              onPressed: () => this.answerQuestion(),
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: () => print('Answer 2 chosen'),
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: () => {
                print('Answer 3 chosen'),
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
