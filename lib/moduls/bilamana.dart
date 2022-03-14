import 'package:flutter/material.dart';

class bilamana extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Jika dilihat dari  Pasal 12B Ayat (1) Undang-Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001 \n\n“Setiap gratifikasi kepada pegawai negeri atau penyelenggara negara dianggap pemberian suap, apabila berhubungan dengan jabatannya dan yang berlawanan dengan kewajiban atau tugasnya, dengan ketentuan sebagai berikut: ... ” \n\nDari rumusan di atas maka dapat ditarik kesimpulan bahwa suatu gratifikasi atau pemberian hadiah berubah menjadi suatu yang perbuatan pidana suap khususnya pada seorang Penyelenggara Negara atau Pegawai Negeri adalah pada saat Penyelenggara Negara atau Pegawai Negeri tersebut melakukan tindakan menerima suatu gratifikasi atau pemberian hadiah dari pihak manapun sepanjang pemberian tersebut diberikan berhubungan dengan jabatan ataupun pekerjaannya. \n\nSalah satu kebiasaan yang berlaku umum di masyarakat adalah pemberian tanda terima kasih atas jasa yang telah diberikan oleh petugas, baik dalam bentuk barang atau bahkan uang. Hal ini dapat menjadi suatu kebiasaan yang bersifat negatif dan dapat mengarah menjadi potensi perbuatan korupsi di kemudian hari. Potensi korupsi inilah yang berusaha dicegah oleh peraturan undang-undang. Oleh karena itu, berapapun nilai gratifikasi yang diterima seorang Penyelenggara Negara atau Pegawai Negeri, bila pemberian itu patut diduga berkaitan dengan jabatan/kewenangan yang dimiliki, maka sebaiknya Penyelenggara Negara atau Pegawai Negeri tersebut segera melaporkannya pada KPK untuk dianalisis lebih lanjut.';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Bilamana Gratifikasi Dikatakan Sebagai Tindak Pidana Korupsi? \n \n',
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