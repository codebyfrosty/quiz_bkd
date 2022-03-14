import 'package:flutter/material.dart';

class harus extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Jika Anda memiliki posisi sebagai penyelenggara negara atau pegawai negeri menerima gratifikasi maka langkah terbaik yang bisa Anda lakukan (jika Anda dapat mengidentifikasi motif pemberian adalah gratifikasi dianggap suap) adalah menolak gratifikasi tersebut secara baik, sehingga sedapat mungkin tidak menyinggung perasaan pemberi. Jika keadaan memaksa Anda menerima gratifikasi tersebut, misalnya pemberian terlanjur dilakukan melalui orang terdekat Anda (suami, istri, anak, pembantu, sopir dan lain-lain) atau ada perasaan tidak enak karena dapat menyinggung pemberi, maka sebaiknyagratifikasi yang diterima segera dilaporkan ke KPK. Jika instansi Andakebetulan adalah salah satu instansi yang telah bekerjasama dengan KPK dalam Program Pengendalian Gratifikasi (PPG), maka Anda dapat melaporkan langsung di instansi Anda melalui Unit Pengendalian Gratifikasi (UPG).';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Apa yang Harus Dilakukan saat Saya Menerima Gratifikasi? \n \n',
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