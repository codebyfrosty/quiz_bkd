import 'package:flutter/material.dart';

class pengertian extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Pengertian gratifikasi terdapat pada Penjelasan Pasal 12B Ayat (1) Undang-Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001, bahwa: “Yang dimaksud dengan ”gratifikasi” dalam ayat ini adalah pemberian dalam arti luas, yakni meliputi pemberian uang, barang, rabat (discount), komisi, pinjaman tanpa bunga, tiket perjalanan, fasilitas penginapan, perjalanan wisata, pengobatan cuma-cuma, dan fasilitas lainnya. Gratifikasi tersebut baik yang diterima di dalam negeri maupun di luar negeri dan yang dilakukan dengan menggunakan sarana elektronik atau tanpa sarana elektronik”.';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Apa yang dimaksud dengan gratifikasi? \n \n',
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