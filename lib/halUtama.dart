import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './modul.dart';

class Utama extends StatelessWidget {
   Widget quizLogic;
  final Function operatorModul;
  final Function operatorQuiz;
  bool showModul;
  bool showQuiz;
  Utama(
      {@required this.quizLogic,
      @required this.operatorModul,
      @required this.operatorQuiz,
      @required this.showModul,
      @required this.showQuiz});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                : RaisedButton(
                    child: Text('Quiz'),
                    onPressed: () {
                      print('Quiz clicked');
                      operatorQuiz;
                    }),
          ),
        ],
      ),
    );
  }
}
