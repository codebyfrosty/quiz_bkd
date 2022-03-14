import 'package:flutter/material.dart';

class dilaporkan extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  final String _teks =
      'Gratifikasi tidak selalu harus dilaporkan kepada KPK, oleh karena itu KPK menerbitkan Surat B-143/01-13/01/2013 tentang Himbauan Terkait Gratifikasi yang menyebutkan beberapa gratifikasi yang tidak perlu dilaporkan sebagaimana disebutkan dalam Surat KPK Nomor B- 143/01-13/01/2013 dalam butir 3 huruf a sd j dengan penjelasan sebagai berikut: \n\na)diperoleh dari hadiah langsung/undian, diskon/rabat, voucher, point rewards atau suvenir yang berlaku umum dan tidak terkait kedinasan; \nb)Diperoleh karena prestasi akademis atau non akademis (kejuaraan/perlombaan/kompetisi) dengan biaya sendiri dan tidak terkait kedinasan; \nc)diperoleh dari keuntungan/bunga dari penempatan dana, investasi atau kepemilikan saham yang berlaku umum dan tidak terkait kedinasan; \nd)diperoleh dari kompensasi atas profesi diluar kedinasan yang tidak terkait dari tupoksi pegawai negeri atau penylenggara negara, tidak melanggar konflik kepentingan atau kode etik pegawai dan dengan izin tertulis dari atasan langusng; \ne)diperoleh dari hubungan keluarga sedarah dalam garis keturunan lurus dua derajat atau dalam garis keturunan kesamping satu derajat sepanjang tidak mempunyai konflik kepentingan dengan penerima gratifikasi; \nf)diperoleh dari hubungan keluarga semenda dalam garis keturunan lurus satu derajat atau dalam garis keturunan kesamping satu derajat sepanjang tidak mempunyai konflik kepentingan dengan penerima gratifikasi; \ng)diperoleh dari pihak yang mempunyai hubungan keluarga sebagaimana dimaksud pada huruf f dan g terkait dengan hadiah perkawinan, khitanan anak, ulang tahun, kegiatan keagamaan/adat/tradisi dan bukan dari pihak-pihak yang mempunyai konflik kepentingan dengan penerima gratifikasi; \nh)diperoleh dari pihak terkait dengan musibah dan bencana, dan bukan dari pihak-pihak yang mempunyai konflik kepentingan dengan penerima gratifikasi; \ni)diperoleh dari kegiatan resmi kedinasan seperti rapat, seminar, workshop, konferensi, pelatihan atau kegiatan lain sejenis yang berlaku secara umum berupa seminar kit, sertifikat dan plakat/cinderamata, dan \nj)diperoleh dari acara resmi kedinasan dalam bentuk hidangan/ sajian/jamuan berupa makanan dan minuman yang berlaku umum';

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(title: Text('Modul'),),
        body: new SingleChildScrollView(
          child: new RichText(
            text: TextSpan(
              text: 'Gratifikasi yang Tidak Perlu dilaporkan \n \n',
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