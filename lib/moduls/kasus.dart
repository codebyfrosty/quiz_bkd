import 'package:flutter/material.dart';

class kasus extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Untuk memberikan pemahaman tentang gratifikasi dan penanganannya, berikut ini akan diuraikan beberapa contoh kasus gratifikasi baik yang dilarang berdasarkan ketentuan pasal 12B Undang-Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001. Tentu saja hal ini hanya merupakan sebagian kecil saja dari situasi-situasi terkait gratifikasi yang seringkali terjadi. \n\nContoh-contoh pemberian yang dapat dikategorikan sebagai gratifi-kasi yang sering terjadi adalah: \n\n1. Pemberian hadiah atau parsel kepada pejabat pada saat hari raya keagamaan, oleh rekanan atau bawahannya \n2. Hadiah atau sumbangan pada saat perkawinan anak dari pejabat oleh rekanan kantor pejabat tersebut \n3. Pemberian tiket perjalanan kepada pejabat atau keluarganya untuk keperluan pribadi secara cuma-Cuma \n4. Pemberian potongan harga khusus bagi pejabat untuk pembelian barang dari rekanan \n5. Pemberian biaya atau ongkos naik haji dari rekanan kepada pejabat \n6. Pemberian hadiah ulang tahun atau pada acara-acara pribadi lainnya dari rekanan \n7. Pemberian hadiah atau souvenir kepada pejabat pada saat kunjungan kerja \n8. Pemberian hadiah atau uang sebagai ucapan terima kasih karena telah dibantu, dll';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Contoh-Contoh Kasus Gratifikasi \n \n',
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