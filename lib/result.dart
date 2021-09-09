import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? score;
  final Function() onPressed;
  Result(this.score, this.onPressed);

  String get resultPhrase {
    String resultText;
    if (score! <= 8) {
      resultText = 'You are Awesome and innocent';
    } else if (score! <= 12) {
      resultText = 'You are likeable';
    } else if (score! <= 16) {
      resultText = 'You are ... Stranger?!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: onPressed,
            child: Text('Reset Quiz'),
          ),
        ],
      ),
    );
  }
}
