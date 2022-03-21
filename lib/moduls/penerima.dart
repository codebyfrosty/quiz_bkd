import 'package:flutter/material.dart';

class penerima extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Penerimaan gratifikasi oleh pegawai negeri atau penyelenggara negara wajib dilaporkan kepada Komisi Pemberantasan Korupsi selambat-lambatnya 30 (tiga puluh) hari kerja terhitung sejak tanggal gratifikasi tersebut diterima. Hal ini sesuai dengan ketentuan yang tercantum dalam Pasal 12C ayat (2) Undang- Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001.';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Penerima gratifikasi yang wajib melaporkan gratifikasi \n \n',
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