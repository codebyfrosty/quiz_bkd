//quiz pengetahuan gratifikasi code

import 'package:flutter/material.dart';

import './quiz.dart';

class Quiz3 extends StatefulWidget {
  // const Quiz1({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Quiz3State();
  }
}

class Quiz3State extends State<Quiz3> {
  final questions = const [
    {
      'questionText': 'Studi kasus 1',
      'answers': [
        {'text': 'Jawaban bener', 'score': 1},
        {'text': 'Jawaban salah', 'score': 0},
      ],
    },
    {
      'questionText': 'Studi kasus 2',
      'answers': [
        {'text': 'Jawaban bener', 'score': 1},
        {'text': 'Jawaban salah', 'score': 0},
      ],
    },
    {
      'questionText': 'Studi kasus 3',
      'answers': [
        {'text': 'Jawaban bener', 'score': 1},
        {'text': 'Jawaban salah', 'score': 0},
      ],
    },
    {
      'questionText': 'Studi kasus 4',
      'answers': [
        {'text': 'Jawaban bener', 'score': 1},
        {'text': 'Jawaban salah', 'score': 0},
      ],
    },
    {
      'questionText': 'Studi kasus 5',
      'answers': [
        {'text': 'Jawaban bener', 'score': 1},
        {'text': 'Jawaban salah', 'score': 0},
      ],
    },
  ];

  final kj = const [
    'Jawaban studi kasus ',
    'Jawaban studi kasus 1',
    'Jawaban studi kasus 2',
    'Jawaban studi kasus 3',
    'Jawaban studi kasus 4',
    'Jawaban studi kasus 5',
  ];

  var questionIndex = 0;
  var totalscore = 0;
  bool showQuiz = true;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
      showQuiz = true;
    });
  }

  void lanjut() {
    setState(() {
      showQuiz = true;
      totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    totalscore = totalscore + score;
    // totalscore += score;

    if (questionIndex < 5) {
      print('We have more questions!');
    }

    setState(() {
      questionIndex = questionIndex + 1;
      showQuiz = false;
    });

    print(questionIndex);
  }

  Widget quizlogic() {
    return showQuiz
        ? Quiz(questions, _answerQuestion, questionIndex)
        : Column(
            children: [
              totalscore == 0
                  ? Center(
                      child: Text('Jawaban Anda Salah'),
                    )
                  : Center(
                      child: Text('Jawaban Anda Benar'),
                    ),
              Center(
                child: Text(kj[questionIndex]),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: lanjut,
                  child: Text('Studi Kasus Berikutnya'),
                ),
              )
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(193, 52, 47, 1),
          title: Text('Studi Kasus'),
        ),
        body: questionIndex < 5
            ? quizlogic()
            : Column(
                children: [
                  totalscore == 0
                      ? Center(
                          child: Text('Jawaban Anda Salah'),
                        )
                      : Center(
                          child: Text('Jawaban Anda Benar'),
                        ),
                  Center(
                    child: Text(kj[questionIndex]),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: resetQuiz,
                      child: Text('Coba Lagi'),
                    ),
                  )
                ],
              ));
  }
}
