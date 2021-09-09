import 'package:complete_guide/quiz.dart';
import 'package:complete_guide/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  int _totalScore = 0;

  List<Map<String, dynamic>> _question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Black', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Cat', 'score': 6},
        {'text': 'Dog', 'score': 10},
        {'text': 'Horse', 'score': 8}
      ]
    },
    {
      'questionText': 'Who\'s your Favorite Instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'angela', 'score': 7},
        {'text': 'Jack', 'score': 1},
        {'text': 'Alex', 'score': 1}
      ]
    },
  ];

  void _answerQuestion(int score) {

    _totalScore += score;
    
    if (_questionIndex < _question.length) {
      setState(() {
        _questionIndex += 1;
      });
    } else {
      setState(() {
        _questionIndex = 0;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzes'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                question: _question,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
