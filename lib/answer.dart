// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selector;
  final String answerText;
  Answer(this.selector, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(124, 123, 100, 255)),
        ),
        child: Text(answerText),
        onPressed: selector,
      ),
    );
  }
}
