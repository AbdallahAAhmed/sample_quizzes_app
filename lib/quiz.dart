import 'package:complete_guide/question.dart';
import 'package:flutter/material.dart';

import 'elevate_button.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>>? question;
  final int? questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.question,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question![questionIndex!]['questionText']),
        ...question![questionIndex!]['answers'].map((answer) {
          return ElevateButton(title: answer['text'], onPressed: () => answerQuestion(answer['score']));
        }),
      ],
    );
  }
}
