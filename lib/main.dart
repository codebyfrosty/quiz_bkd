import 'package:flutter/material.dart';

// import 'package:flutter_complete_guide/modul.dart';
import 'package:flutter_complete_guide/result.dart';
import './halUtama.dart';

import './quiz.dart';

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
// Quiz pertama

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

  Widget quizLogic() {
    return questionIndex < questions.length
        ? Quiz(questions, _answerQuestion, questionIndex)
        : Result(totalscore, resetQuiz);
  }

//Screening

  final questions2 = const [
    {
      'questionText': 'TESTQUESTION',
      'answers': [
        {'text': 'Magelangan', 'score': 1},
        {'text': 'Nasi Tumpang', 'score': 2},
        {'text': 'Ayam Goreng', 'score': 3}
      ],
    },
    {
      'questionText': 'TESTQUESTION2',
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

  var questionIndex2 = 0;
  var totalscore2 = 0;

  void resetQuiz2() {
    setState(() {
      questionIndex2 = 0;
      totalscore2 = 0;
    });
  }

  void _answerQuestion2(int score2) {
    totalscore2 = totalscore2 + score2;
    // totalscore += score;

    if (questionIndex2 < questions.length) {
      print('We have more questions!');
    }

    setState(() {
      questionIndex2 = questionIndex2 + 1;
    });

    print(questionIndex2);
  }

  Widget quizLogic2() {
    return questionIndex2 < questions2.length
        ? Quiz(questions2, _answerQuestion2, questionIndex2)
        : Result(totalscore2, resetQuiz2, );
  }

  bool showQuiz = false;
  bool showQuiz2 = false;
  bool showModul = false;
  bool showUtama = true;

  void balikmenu() {
    setState(() {
      showQuiz = false;
      showUtama = true;
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void balikmenu2() {
    setState(() {
      showQuiz2 = false;
      showUtama = true;
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void operatorModul() {
    setState(() {
      showModul = true;
      showQuiz = false;
      showUtama = false;
    });
  }

  void operatorQuiz() {
    setState(() {
      showModul = false;
      showQuiz = true;
      showUtama = false;
      print('clicked');
    });
  }

  void operatorQuiz2() {
    setState(() {
      showModul = false;
      showQuiz = true;
      showUtama = false;
      print('clicked');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz App'),
            ),
            body: Utama(
              operatorModul: operatorModul,
              operatorQuiz: operatorQuiz,
              quizLogic: quizLogic(),
              showModul: showModul,
              showQuiz: showQuiz,
              showUtama: showUtama,
              operatorQuiz2: operatorQuiz2,
              quizLogic2: quizLogic2(),
              showQuiz2: showQuiz2,
              answerQuestion: _answerQuestion,
              balikmenu: balikmenu,
              questionIndex: questionIndex,
              questions: questions,
              resetQuiz: resetQuiz,
              totalscore: totalscore,
            )));
  }
}
