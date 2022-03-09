import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class Quiz1 extends StatefulWidget {
  // const Quiz1({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  
  final questions = const [
    {
      'questionText': 'Apa makanan kesukaan mu?',
      'answers': [
        {'text': 'Magelangan', 'score': 1},
        {'text': 'Nasi Tumpang', 'score': 2},
        {'text': 'Ayam Goreng', 'score': 3}
      ],
    },
    {
      'questionText': 'Apa minuman kesukaan mu?',
      'answers': [
        {'text': 'Es Teh Manis', 'score': 1},
        {'text': 'Coca cola', 'score': 2},
        {'text': 'Kopi Kapal Api', 'score': 3}
      ],
    },
    {
      'questionText': 'Apa hobi mu?',
      'answers': [
        {'text': 'Main Game', 'score': 1},
        {'text': 'Main Futsal', 'score': 2},
        {'text': 'Jalan-jalan', 'score': 3}
      ],
    },
  ];

  var questionIndex = 0;
  var totalscore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    totalscore = totalscore + score;
    // totalscore += score;

    if (questionIndex < questions.length) {
      print('We have more questions!');
    }

    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZZ SATUU'),
      ),
      body: questionIndex < questions.length
          ? Quiz(questions, _answerQuestion, questionIndex)
          : Result(totalscore, resetQuiz),
    );
  }
}

