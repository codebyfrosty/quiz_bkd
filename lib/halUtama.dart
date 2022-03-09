import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './modul.dart';

class Utama extends StatelessWidget {
  Widget quizLogic;
  Widget quizLogic2;
  final Function operatorModul;
  final Function operatorQuiz;
  final Function operatorQuiz2;
  bool showModul;
  bool showQuiz;
  bool showQuiz2;
  bool showUtama;
  Utama(
      {@required this.quizLogic,
      @required this.operatorModul,
      @required this.operatorQuiz,
      @required this.showModul,
      @required this.showQuiz,
      @required this.showUtama,
      @required this.operatorQuiz2,
      @required this.showQuiz2,
      @required this.quizLogic2
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: showUtama
      ? Column(
        children: [
          Text('Halaman Utama',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
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
            child: showQuiz 
                ? quizLogic
                : RaisedButton(child: Text('Quiz'), onPressed: operatorQuiz),
          ),
          Center(
            child: showQuiz2
                ? quizLogic2
                : RaisedButton(child: Text('PROVE IT!!'), onPressed: operatorQuiz),
          ),
        ],
      )
      : showQuiz
      ? quizLogic
      : showQuiz2
      ? quizLogic2
      : quizLogic2
    );
  }
}
