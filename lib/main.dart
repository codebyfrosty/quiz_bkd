import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var count = 0;
  void answerQuestion() {
    
    setState(() {
      count = count + 1;
      questionIndex = count % 3;
    });

    // print('Answer Chonsen!');
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite food?',
        'answers': ['Magelangan', 'Nasi Tumpang', 'Ayam Goreng'],
      },
      {
        'questionText': 'What\'s your favorite drink?',
        'answers': ['Es teh', 'Coca Cola', 'Fanta'],
      },
      {
        'questionText': 'What\'s your zodiac sign',
        'answers': ['Cancer', 'Taurus', 'Leo'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText']
            ),
            ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(answer, answerQuestion);
            }).toList()
          ],
        ),
      ),
    );
  }
}
