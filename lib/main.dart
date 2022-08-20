// ignore_for_file: unnecessary_new, avoid_print, prefer_const_constructors, deprecated_member_use, duplicate_ignore, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
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
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override //decorator provider by dart
  Widget build(BuildContext context) {
    var questions = [
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
        'answers': ['Pizza', 'Paani Puri', 'Adi\'s dick', 'Adi wle chawal']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hehe App'),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(children: [
          Question(
            questions[questionIndex > 2 ? questionIndex = 0 : questionIndex]
                ['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
