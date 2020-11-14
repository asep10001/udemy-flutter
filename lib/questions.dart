import 'package:flutter/cupertino.dart';

class Questions extends StatelessWidget {
  final String questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        this.questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
