// ignore_for_file: unnecessary_new, avoid_print, prefer_const_constructors, deprecated_member_use, duplicate_ignore, sort_child_properties_last, unused_import, unused_local_variable

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyHeheApp());
// }

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  //ignore: //no_logic_in_create_state
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int score = 0;
  int questionIndex = 0;
  int totalScore = 0;

  final questions = [
    {
      'questionText': 'What\'s my favourite Destination',
      'answers': [
        {'text': 'Newyork', 'score': '0'},
        {'text': 'Switzerland', 'score': '0'},
        {'text': 'Greece', 'score': '0'},
        {'text': 'Udaipur', 'score': '100'},
      ]
    },
    {
      'questionText': 'What\'s my favourite Cuisine',
      'answers': [
        {'text': 'Thai', 'score': '0'},
        {'text': 'Italian', 'score': '0'},
        {'text': 'Indian', 'score': '100'},
        {'text': 'Chinese', 'score': '0'},
      ]
    },
    {
      'questionText': 'What\'s my favourite food',
      'answers': [
        {'text': 'Pizza', 'score': '0'},
        {'text': 'Adi wale Chawal', 'score': '100'},
        {'text': 'Paani puri', 'score': '0'},
        {'text': 'Dal Makhni', 'score': '0'},
      ]
    },
  ];

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion() {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more questions');
    }
  }

  @override //decorator provider by dart
  Widget build(BuildContext context) {
    VoidCallback selector;
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Hehe App'),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: questionIndex < questions.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questions: questions,
                  questionIndex: questionIndex)
              : Result(totalScore)),
    );
  }
}
