import 'package:flutter/material.dart';

class siapkan extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Tata cara pelaporan penerimaan gratifikasi yang diatur dalam Pasal 16 huruf a Undang-Undang Nomor 30 Tahun 2002 tentang Komisi Pemberantasan Tindak Pidana Korupsi, menyebutkan bahwa laporan disampaikan secara tertulis dengan mengisi formulir sebagaimana ditetapkan oleh Komisi Pemberantasan Korupsi dengan melampirkan dokumen yang berkaitan dengan gratifikasi. Pasal ini mensyaratkan bahwa setiap laporan harus diformalkan dalam formulir gratifikasi, adapun formulir gratifikasi bisa diperoleh dengan cara mendapatkannya secara langsung dari Kantor KPK, mengunduh (download) dari situs resmi KPK (www.kpk.go.id/gratifikasi), memfotokopi formulir gratifikasi asli atau cara-cara lain sepanjang formulir tersebut merupakan formulir gratifikasi; sedangkan pada huruf b pasal yang sama menyebutkan bahwa formulir sebagaimana dimaksud pada huruf a sekurang-kurangnya memuat: \n1. Nama dan alamat lengkap penerima dan pemberi gratifikasi; \n2. Jabatan pegawai negeri atau penyelanggara negara; \n3. Tempat dan waktu penerimaan gratifikasi; \n4. Uraian jenis gratifikasi yang diterima; dan \n5. Nilai gratifikasi yang diterima. \n\nAtau hubungi Direktorat Gratifikasi \nTelepon : (021) 2557 8440 \nFacs : (021) 529 21230 \nemail : pelaporan.gratifikasi@kpk.go.id \nemodul : www.kpk.go.id/gratifikasi';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Apa Yang Harus Dilakukan dan Disiapkan dalam Melaporkan Gratifikasi? \n \n',
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