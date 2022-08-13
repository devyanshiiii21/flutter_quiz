// ignore_for_file: unnecessary_new, avoid_print, prefer_const_constructors, deprecated_member_use, duplicate_ignore, sort_child_properties_last

import 'package:flutter/material.dart';

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

  Widget generateList() {
    List<String> list = itemList();
    ListView myList = new ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return new ListTile(
          title: new Text(list[index]),
        );
      },
    );
    return myList;
  }

  @override //decorator provider by dart
  Widget build(BuildContext context) {
    var questions = ['Whats my favourite colour', 'Whats my fav food'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hehe App'),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(children: [
          Text(
            questions[questionIndex > 1 ? questionIndex = 0 : questionIndex],
          ),

          // ignore: deprecated_member_use
          RaisedButton(child: Text('Black'), onPressed: answerQuestion),
          RaisedButton(child: Text('Blue'), onPressed: answerQuestion),
          RaisedButton(child: Text('White'), onPressed: answerQuestion),
        ]),
      ),
    );
  }

  List<String> itemList() {
    return ['Whats my favourite colour', 'Whats my fav food'];
  }
}
