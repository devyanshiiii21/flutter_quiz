// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final VoidCallback resetHandler;

  Result(this.resultscore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultscore >= 300) {
      resultText = 'You know me quite well';
    } else if (resultscore >= 200 && resultscore < 300) {
      resultText = 'You don\'t know me much';
    } else {
      resultText = 'Huh, you don\'t know me at all';
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
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // ignore: deprecated_member_use
          FlatButton(
            child: Text('Try Again'),
            textColor: Colors.indigoAccent,
            onPressed: resetHandler,
          )
        ],
      ),
      // ignore: deprecated_member_use
    );
  }
}
