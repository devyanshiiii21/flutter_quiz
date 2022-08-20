// ignore_for_file: unnecessary_new, avoid_print, prefer_const_constructors, deprecated_member_use, duplicate_ignore, sort_child_properties_last, unused_import

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
  final questions = const [
    {
      'questionText': 'What\'s my favourite Destination',
      'answers': ['Newyork', 'Switzerland', 'Greece', 'Udaipur']
    },
    {
      'questionText': 'What\'s my favourite Cuisine',
      'answers': ['Thai', 'Indian', 'Chinese', 'Italian']
    },
    {
      'questionText': 'What\'s my favourite food',
      'answers': ['Pizza', 'Paani Puri', 'Dal makhni', 'Adi wle chawal']
    },
  ];

  var questionIndex = 0;

  void answerQuestion() {
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
              : Result()),
    );
  }
}
