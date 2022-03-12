import 'package:flutter/material.dart';

class Result3 extends StatelessWidget {
  // const Rlt({ Key? key }) : super(key: key);

  final Function reset;
  final int resultScore;
  final Function lanjut;
  // Function hideQ;
  Result3(this.resultScore, this.reset, this.lanjut);

  String get resultphrase {
    var resultText = 'Anda menjawab ' + resultScore.toString() + ' pertanyaan dengan benar';
    // if (resultScore >= 9) {
    //   resultText = 'Anda suka ayam goreng, kopi kapal api, dan jalan2';
    // } else {
    //   resultText = 'Quiz selesai';
    // }
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
        // RaisedButton(
        //   onPressed: () {
        //     print('object');
        //     // hideQ();
        //   },
        //   child: Text('Balik ke Menu Awal'),
        // )
      ],
    ));
  }
}
