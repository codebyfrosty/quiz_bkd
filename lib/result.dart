import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Rlt({ Key? key }) : super(key: key);

  Function reset;
  final int resultScore;
  Function showQ;
  Result(this.resultScore, this.reset, this.showQ);

  String get resultphrase {
    var resultText = 'You did all the questions!';
    if (resultScore >= 9) {
      resultText = 'Anda suka ayam goreng, kopi kapal api, dan jalan2';
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
            showQ();
          },
          child: Text('Balik ke Menu Awal'),
        )
      ],
    ));
  }
}
