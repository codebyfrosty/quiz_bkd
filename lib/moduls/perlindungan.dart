import 'package:flutter/material.dart';

class perlindungan extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Pelapor gratifikasi berpotensi untuk menjadi saksi yang dapat memberikan keterangan guna kepentingan penyelidikan, penyidikan, penuntutan, dan pemeriksaan di sidang pengadilan tentang suatu perkara pidana yang ia dengar sendiri, ia lihat sendiri, dan/atau ia alami sendiri, oleh karena itu saksi yang berasal dari pelapor gratifikasi juga berhak mendapatkan perlindungan seperti yang diatur dalam Undang-Undang Nomor 13 tahun 2006 tentang Perlindungan Saksi dan Korban pasal 5 uruf a dan b yaitu: \n\na) memperoleh perlindungan atas keamanan pribadi, keluarga, dan harta bendanya, serta bebas dari Ancaman yang berkenaan dengan kesaksian yang akan, sedang, atau telah diberikannya \nb) ikut serta dalam proses memilih dan menentukan bentuk perlindungan dan dukungan keamanan';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Perlindungan Pelapor \n \n',
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