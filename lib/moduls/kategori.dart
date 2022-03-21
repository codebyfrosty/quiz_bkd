import 'package:flutter/material.dart';

class kategori extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Penerimaan gratifikasi dapat dikategorikan menjadi dua kategori yaitu Gratifikasi yang Dianggap Suap dan Gratifikasi yang Tidak Dianggap Suap yaitu: \n \n1. Gratifikasi yang dianggap suap.\n Yaitu Gratifikasi yang diterima oleh Pegawai Negeri atau Penyelenggara Negara yang berhubungan dengan jabatannya dan yang berlawanan dengan kewajiban atau tugasnya, sebagaimana dimaksud dalam Pasal 12 B Undang-Undang Nomor 31 Tahun 1999 tentang Pemberantasan Tindak Pidana Korupsi sebagaimana telah diubah dengan Undang-Undang Nomor 20 Tahun 2001 tentang Perubahan atas Undang-Undang Nomor 31 Tahun 1999 tentang Pemberantasan Tindak Pidana Korupsi. Contoh gratifikasi yang dianggap suap:\n1. PEMBERIAN PINJAMAN BARANG DARI REKANAN KEPADA PEJABAT/PEGAWAI NEGERI SECARA CUMA-CUMA \n2. PEMBERIAN TIKET PERJALANAN OLEH REKANAN KEPADA PENYELENGGARA NEGARA ATAU PEGAWAI NEGERI ATAU KELUARGANYA UNTUK KEPERLUAN DINAS/PRIBADI SECARA CUMA-CUMA\n \n2. Gratifikasi yang tidak dianggap suap\nYaitu Gratifikasi yang diterima oleh Pegawai Negeri atau Penyelenggara Negara yang berhubungan dengan jabatan dan tidak berlawanan dengan kawajiban atau tugasnya. Gratifikasi yang Tidak Dianggap Suap dapat dibagi menjadi 2 sub kategori yaitu Gratifikasi yang Tidak Dianggap Suap yang terkait kedinasan dan Gratifikasi yang Tidak Dianggap Suap yang Tidak Terkait Kedinasan.';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Kategori Gratifikasi \n \n',
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