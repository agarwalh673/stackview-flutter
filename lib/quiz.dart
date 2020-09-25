import 'package:MathsQuiz/question.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz(this.questionIndex, this.answerQuestion, this.questions);
  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answerText']  as List<Map<String, Object>>)
        .map((answer){
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}