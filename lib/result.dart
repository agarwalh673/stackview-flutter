import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Result extends StatelessWidget {
  int totScore;
  final Function resetQuiz;

  Result(this.totScore, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(totScore.toString()),
          RaisedButton(child: Text('Restart'), onPressed: resetQuiz, textColor: Colors.blue,)
        ],
      )
      
    );
  }
}