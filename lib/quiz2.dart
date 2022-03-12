//Prove it code

import 'package:flutter/material.dart';

import './quiz.dart';
import './result2.dart';

class Quiz2 extends StatefulWidget {
  // const Quiz1({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return Quiz2State();
  }
}

class Quiz2State extends State<Quiz2> {
  
  final questions = const [
    {
      'questionText': 'Apakah pemberian itu mempengaruhi pengambilan keputusan Anda?',
      'answers': [
        {'text': 'Ya', 'score': 1},
        {'text': 'Tidak', 'score': 0},
      ],
    },
    {
      'questionText': 'Apakah pemberian itu bertentangan dengan ketentuan?',
      'answers': [
        {'text': 'Ya', 'score': 1},
        {'text': 'Tidak', 'score': 0},
      ],
    },
    {
      'questionText': 'Apakah pemberian itu dilakukan secara terbuka?',
      'answers': [
        {'text': 'Ya', 'score': 0},
        {'text': 'Tidak', 'score': 1},
      ],
    },
    {
      'questionText': 'Apakah pemberian itu memiliki nilai yang besar?',
      'answers': [
        {'text': 'Ya', 'score': 1},
        {'text': 'Tidak', 'score': 0},
      ],
    },
    {
      'questionText': 'Apakah pemberian itu bertentangan dengan kode etik?',
      'answers': [
        {'text': 'Ya', 'score': 1},
        {'text': 'Tidak', 'score': 0},
      ],
    },
    {
      'questionText': 'Apakah pemberian itu memiliki konflik kepentingan?',
      'answers': [
        {'text': 'Ya', 'score': 1},
        {'text': 'Tidak', 'score': 0},
      ],
    },
    {
      'questionText': 'Apakah pemberian itu dilakukan berdekatan dengan waktu pengambilan keputusan?',
      'answers': [
        {'text': 'Ya', 'score': 1},
        {'text': 'Tidak', 'score': 0},
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
        title: Text('PROVE IT !!'),
      ),
      body: questionIndex < questions.length
          ? Quiz(questions, _answerQuestion, questionIndex)
          : Result2(totalscore, resetQuiz),
    );
  }
}

