import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Rlt({ Key? key }) : super(key: key);

  final Function reset;
  final int resultScore;
  // Function hideQ;
  Result(this.resultScore, this.reset);

  String get resultphrase {
    var resultText =
        'Anda menjawab ' + resultScore.toString() + ' pertanyaan dengan benar';
    // if (resultScore >= 9) {
    //   resultText = 'Anda suka ayam goreng, kopi kapal api, dan jalan2';
    // } else {
    //   resultText = 'Quiz selesai';
    // }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Quiz'),
        backgroundColor: Color.fromRGBO(224, 101, 101, 1),
      ),
    );
  }
}
