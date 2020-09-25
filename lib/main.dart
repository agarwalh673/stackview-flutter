import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totScore =0;
  final questions = const [
    {
      'questionText': '3+3 =__?',
      'answerText': [
        {'text': '4', 'score': 0},
        {'text': '6', 'score': 1},
        {'text': '8', 'score': 0},
        {'text': '5', 'score': 0}
      ],
    },
    {
      'questionText': '3-3 =__?',
      'answerText': [
        {'text': '2', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '0', 'score': 1},
        {'text': '5', 'score': 0}
      ],
    },
    {
      'questionText': '3%3 =__?',
      'answerText': [
        {'text': '1', 'score': 1},
        {'text': '0', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '5', 'score': 0}
      ],
    },
    {
      'questionText': '3*3 =__?',
      'answerText': [
        {'text': '9', 'score': 1},
        {'text': '6', 'score': 0},
        {'text': '8', 'score': 0},
        {'text': '5', 'score': 0}
      ],
    },
    {
      'questionText': '3**3 =__?',
      'answerText': [
        {'text': '4', 'score': 0},
        {'text': '27', 'score': 1},
        {'text': '9', 'score': 0},
        {'text': '5', 'score': 0}
      ],
    },
  ];

  void resetQuiz()
  {
    setState(() {
      totScore = 0;
      questionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    totScore+=score;
    setState(() {
      questionIndex += 1;
    });
    if (questionIndex < questions.length) 
    print(questionIndex);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the Maths Quiz'),
      ),
      body: questionIndex <questions.length 
      ? 
        Quiz(questionIndex, answerQuestion, questions)
      : Result(totScore, resetQuiz)
      
    ));
  }
}
