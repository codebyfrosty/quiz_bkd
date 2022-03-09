import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './modul.dart';
import './quiz1.dart';
import './quiz2.dart';

class Utama extends StatelessWidget {
  Widget quizLogic;
  Widget quizLogic2;
  final Function operatorModul;
  final Function operatorQuiz;
  final Function operatorQuiz2;
  final Function answerQuestion;
  final Function balikmenu;
  final Function resetQuiz;
  bool showModul;
  bool showQuiz;
  bool showQuiz2;
  bool showUtama;
  var questionIndex;
  var questions;
  var totalscore;
  Utama(
      {@required this.quizLogic,
      @required this.operatorModul,
      @required this.operatorQuiz,
      @required this.showModul,
      @required this.showQuiz,
      @required this.showUtama,
      @required this.operatorQuiz2,
      @required this.showQuiz2,
      @required this.quizLogic2,
      @required this.answerQuestion,
      @required this.balikmenu,
      @required this.questionIndex,
      @required this.questions,
      @required this.resetQuiz,
      @required this.totalscore});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: showUtama
            ? Column(
                children: [
                  Text('Halaman Utama',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  Center(
                    child: RaisedButton(
                        child: Text('Modul'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Modul()),
                          );
                        }),
                  ),
                  Center(
                    child: RaisedButton(
                        child: Text('Quiz'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz1()));
                        }),
                  ),
                  Center(
                    child: RaisedButton(
                        child: Text('Prove it!'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz2()));
                        }),
                  ),
                ],
              )
            : showQuiz
                ? quizLogic
                : showQuiz2
                    ? quizLogic2
                    : quizLogic2);
  }
}
