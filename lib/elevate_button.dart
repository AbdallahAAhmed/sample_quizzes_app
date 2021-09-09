import 'package:flutter/material.dart';

class ElevateButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;

  ElevateButton({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.blue),
        ),
        onPressed: onPressed,
        child: Text(title!),
      ),
    );
  }
}
