import 'package:flutter/material.dart';

class Result2 extends StatelessWidget {
  // const Rlt({ Key? key }) : super(key: key);

  Function reset;
  final int resultScore;
  Function hideQ;
  Result2(this.resultScore, this.reset, this.hideQ);

  String get resultphrase {
    var resultText = 'You did all the questions!';
    if (resultScore >= 9) {
      resultText = 'Nilai anda 9';
    } else {
      resultText = 'Quiz selesai';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultphrase,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        FlatButton(onPressed: reset, child: Text('Coba Lagi')),
        RaisedButton(
          onPressed: () {
            print('object');
            hideQ();
          },
          child: Text('Balik ke Menu Awal'),
        )
      ],
    ));
  }
}
