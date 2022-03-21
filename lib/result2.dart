import 'package:flutter/material.dart';

class Result2 extends StatelessWidget {
  // const Rlt({ Key? key }) : super(key: key);

  final Function reset;
  final int resultScore;
  Result2(this.resultScore, this.reset);

  String get resultphrase {
    var resultText = 'You did all the questions!';
    if (resultScore == 0) {
      resultText = 'Pemberian yang Anda terima bebas dari unsur gratifikasi';
    } else if(resultScore <= 2) {
      resultText = 'Pemberian yang Anda terima sedikit terindakasi sebagai gratifikasi';
    } else if(resultScore <= 4) {
      resultText = 'Terdapat banyak indikasi gratifikasi pada pemberian yang Anda terima. Sebaiknya tidak diterima.';
    } else if(resultScore <= 7) {
      resultText = 'Pemberian yang Anda terima hampir dapat dipastikan adalah gratifikasi!!';
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
        ElevatedButton(onPressed: reset, child: Text('Coba Lagi')),
        // RaisedButton(
        //   onPressed: () {
        //     print('object');
            
        //   },
        //   child: Text('Balik ke Menu Awal'),
        // )
      ],
    ));
  }
}
