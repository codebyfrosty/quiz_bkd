import 'package:flutter/material.dart';

class bagaimana extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Untuk memudahkan pembaca memahami apakah gratifikasi yang diterima termasuk suatu pemberian hadiah yang dianggap suap atau tidak dianggap suap, maka ilustrasi berikut dapat membantu memperjelas. Jika seorang Ibu penjual makanan di sebuah warung memberi makanan kepada anaknya yang datang ke warung, maka itu merupakan pemberian keibuan. Pembayaran dari si anak bukan suatu yang diharapkan oleh si Ibu. Balasan yang diharapkan lebih berupa cinta kasih anak, dan berbagai macam  balasan lain yang mungkin diberikan. Kemudian datang seorang pelanggan, si Ibu memberi makanan kepada pelanggan tersebut lalu menerima pembayaran sebagai balasannya. Keduanya tidak termasuk gratifikasi dianggap suap. Pada saat lain, datang seorang inspektur kesehatan yang sedang inspeksi kualitas restorannya dan si Ibu memberi makanan kepada si inspektur serta menolak menerima pembayaran. Tindakan si Ibu menolak menerima pembayaran dan si Inspektur menerima makanan ini adalah gratifikasi dianggap suap karena pemberian makanan tersebut memiliki harapan bahwa inspektur itu akan menggunakan jabatan-nya untuk melindungi kepentingannya.';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Bagaimana Mengidentifikasi Gratifikasi yang Dianggap Suap? \n \n',
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