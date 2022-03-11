import 'package:flutter/material.dart';

class konsekuensi extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Sanksi pidana yang ditetapkan pada tindak pidana ini cukup berat, yaitu pidana penjara minimum empat tahun, dan maksimum 20 tahun atau pidana penjara seumur hidup, dan pidana denda paling sedikit Rp. 200.000.000,00 (dua ratus juta rupiah), maksimum Rp1.000.000.000,00 (satu miliyar rupiah). Dari rumusan ini jelas sekali bahwa penerimaan gratifikasi merupakan hal yang sangat serius sebagai salah satu bentuk tindak pidana korupsi, dengan sanksi pidana yang persis sama dengan tindak pidana suap lainnya dalam Undang-Undang Pemberantasan Tindak Pidana Korupsi';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Konsekuensi Hukum dari yang Tidak Melaporkan Gratifikasi \n \n',
              style: TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: _teks,
                  style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.normal)
                )
              ]
            ),
            

          ),
        ),
      ),
    );
  }
}