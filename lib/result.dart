// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;

  Result(this.resultscore);

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
          TextButton(
            child: Text(
              'Try Again',
              style: TextStyle(color: Colors.indigo),
            ),
            onPressed: () {},
          )
        ],
      ),
      // ignore: deprecated_member_use
    );
  }
}
