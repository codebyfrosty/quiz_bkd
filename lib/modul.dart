import 'package:flutter/material.dart';

import 'cards/modulcard.dart';

class Modul extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);

  final kontenmodul = const [
    {
      'cardtext': 'Pengertian Gratifikasi',
      'judul': 'Apa yang dimaksud dengan gratifikasi? \n \n',
      'isimodul':
          'Pengertian gratifikasi terdapat pada Penjelasan Pasal 12B Ayat (1) Undang-Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001, bahwa: “Yang dimaksud dengan ”gratifikasi” dalam ayat ini adalah pemberian dalam arti luas, yakni meliputi pemberian uang, barang, rabat (discount), komisi, pinjaman tanpa bunga, tiket perjalanan, fasilitas penginapan, perjalanan wisata, pengobatan cuma-cuma, dan fasilitas lainnya. Gratifikasi tersebut baik yang diterima di dalam negeri maupun di luar negeri dan yang dilakukan dengan menggunakan sarana elektronik atau tanpa sarana elektronik”.'
    },
    {
      'cardtext': 'Kategori Gratifikasi',
      'judul': 'Kategori Gratifikasi \n \n',
      'isimodul':
          'Penerimaan gratifikasi dapat dikategorikan menjadi dua kategori yaitu Gratifikasi yang Dianggap Suap dan Gratifikasi yang Tidak Dianggap Suap yaitu: \n \n1. Gratifikasi yang dianggap suap.\n Yaitu Gratifikasi yang diterima oleh Pegawai Negeri atau Penyelenggara Negara yang berhubungan dengan jabatannya dan yang berlawanan dengan kewajiban atau tugasnya, sebagaimana dimaksud dalam Pasal 12 B Undang-Undang Nomor 31 Tahun 1999 tentang Pemberantasan Tindak Pidana Korupsi sebagaimana telah diubah dengan Undang-Undang Nomor 20 Tahun 2001 tentang Perubahan atas Undang-Undang Nomor 31 Tahun 1999 tentang Pemberantasan Tindak Pidana Korupsi. Contoh gratifikasi yang dianggap suap:\n1. PEMBERIAN PINJAMAN BARANG DARI REKANAN KEPADA PEJABAT/PEGAWAI NEGERI SECARA CUMA-CUMA \n2. PEMBERIAN TIKET PERJALANAN OLEH REKANAN KEPADA PENYELENGGARA NEGARA ATAU PEGAWAI NEGERI ATAU KELUARGANYA UNTUK KEPERLUAN DINAS/PRIBADI SECARA CUMA-CUMA\n \n2. Gratifikasi yang tidak dianggap suap\nYaitu Gratifikasi yang diterima oleh Pegawai Negeri atau Penyelenggara Negara yang berhubungan dengan jabatan dan tidak berlawanan dengan kawajiban atau tugasnya. Gratifikasi yang Tidak Dianggap Suap dapat dibagi menjadi 2 sub kategori yaitu Gratifikasi yang Tidak Dianggap Suap yang terkait kedinasan dan Gratifikasi yang Tidak Dianggap Suap yang Tidak Terkait Kedinasan.'
    },
    {
      'cardtext': 'Penerima Yang Wajib Melaporkan',
      'judul': 'Penerima gratifikasi yang wajib melaporkan gratifikasi \n \n',
      'isimodul':
          'Penerimaan gratifikasi oleh pegawai negeri atau penyelenggara negara wajib dilaporkan kepada Komisi Pemberantasan Korupsi selambat-lambatnya 30 (tiga puluh) hari kerja terhitung sejak tanggal gratifikasi tersebut diterima. Hal ini sesuai dengan ketentuan yang tercantum dalam Pasal 12C ayat (2) Undang- Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001.'
    },
    {
      'cardtext': 'Konsekuensi Jika Tidak Melaporkan',
      'judul': 'Konsekuensi Hukum dari yang Tidak Melaporkan Gratifikasi \n \n',
      'isimodul':
          'Sanksi pidana yang ditetapkan pada tindak pidana ini cukup berat, yaitu pidana penjara minimum empat tahun, dan maksimum 20 tahun atau pidana penjara seumur hidup, dan pidana denda paling sedikit Rp. 200.000.000,00 (dua ratus juta rupiah), maksimum Rp1.000.000.000,00 (satu miliyar rupiah). Dari rumusan ini jelas sekali bahwa penerimaan gratifikasi merupakan hal yang sangat serius sebagai salah satu bentuk tindak pidana korupsi, dengan sanksi pidana yang persis sama dengan tindak pidana suap lainnya dalam Undang-Undang Pemberantasan Tindak Pidana Korupsi'
    },
    {
      'cardtext': 'Gratifikasi Yang Termasuk Korupsi',
      'judul':
          'Bilamana Gratifikasi Dikatakan Sebagai Tindak Pidana Korupsi? \n \n',
      'isimodul':
          'Jika dilihat dari  Pasal 12B Ayat (1) Undang-Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001 \n\n“Setiap gratifikasi kepada pegawai negeri atau penyelenggara negara dianggap pemberian suap, apabila berhubungan dengan jabatannya dan yang berlawanan dengan kewajiban atau tugasnya, dengan ketentuan sebagai berikut: ... ” \n\nDari rumusan di atas maka dapat ditarik kesimpulan bahwa suatu gratifikasi atau pemberian hadiah berubah menjadi suatu yang perbuatan pidana suap khususnya pada seorang Penyelenggara Negara atau Pegawai Negeri adalah pada saat Penyelenggara Negara atau Pegawai Negeri tersebut melakukan tindakan menerima suatu gratifikasi atau pemberian hadiah dari pihak manapun sepanjang pemberian tersebut diberikan berhubungan dengan jabatan ataupun pekerjaannya. \n\nSalah satu kebiasaan yang berlaku umum di masyarakat adalah pemberian tanda terima kasih atas jasa yang telah diberikan oleh petugas, baik dalam bentuk barang atau bahkan uang. Hal ini dapat menjadi suatu kebiasaan yang bersifat negatif dan dapat mengarah menjadi potensi perbuatan korupsi di kemudian hari. Potensi korupsi inilah yang berusaha dicegah oleh peraturan undang-undang. Oleh karena itu, berapapun nilai gratifikasi yang diterima seorang Penyelenggara Negara atau Pegawai Negeri, bila pemberian itu patut diduga berkaitan dengan jabatan/kewenangan yang dimiliki, maka sebaiknya Penyelenggara Negara atau Pegawai Negeri tersebut segera melaporkannya pada KPK untuk dianalisis lebih lanjut.'
    },
    {
      'cardtext': 'Mengidentifikasi Gratifikasi',
      'judul':
          'Bagaimana Mengidentifikasi Gratifikasi yang Dianggap Suap? \n \n',
      'isimodul':
          'Untuk memudahkan pembaca memahami apakah gratifikasi yang diterima termasuk suatu pemberian hadiah yang dianggap suap atau tidak dianggap suap, maka ilustrasi berikut dapat membantu memperjelas. Jika seorang Ibu penjual makanan di sebuah warung memberi makanan kepada anaknya yang datang ke warung, maka itu merupakan pemberian keibuan. Pembayaran dari si anak bukan suatu yang diharapkan oleh si Ibu. Balasan yang diharapkan lebih berupa cinta kasih anak, dan berbagai macam  balasan lain yang mungkin diberikan. Kemudian datang seorang pelanggan, si Ibu memberi makanan kepada pelanggan tersebut lalu menerima pembayaran sebagai balasannya. Keduanya tidak termasuk gratifikasi dianggap suap. Pada saat lain, datang seorang inspektur kesehatan yang sedang inspeksi kualitas restorannya dan si Ibu memberi makanan kepada si inspektur serta menolak menerima pembayaran. Tindakan si Ibu menolak menerima pembayaran dan si Inspektur menerima makanan ini adalah gratifikasi dianggap suap karena pemberian makanan tersebut memiliki harapan bahwa inspektur itu akan menggunakan jabatan-nya untuk melindungi kepentingannya.'
    },
    {
      'cardtext': 'Apabila Anda Menerima Gratifikasi',
      'judul': 'Apa yang Harus Dilakukan saat Saya Menerima Gratifikasi? \n \n',
      'isimodul':
          'Jika Anda memiliki posisi sebagai penyelenggara negara atau pegawai negeri menerima gratifikasi maka langkah terbaik yang bisa Anda lakukan (jika Anda dapat mengidentifikasi motif pemberian adalah gratifikasi dianggap suap) adalah menolak gratifikasi tersebut secara baik, sehingga sedapat mungkin tidak menyinggung perasaan pemberi. Jika keadaan memaksa Anda menerima gratifikasi tersebut, misalnya pemberian terlanjur dilakukan melalui orang terdekat Anda (suami, istri, anak, pembantu, sopir dan lain-lain) atau ada perasaan tidak enak karena dapat menyinggung pemberi, maka sebaiknyagratifikasi yang diterima segera dilaporkan ke KPK. Jika instansi Andakebetulan adalah salah satu instansi yang telah bekerjasama dengan KPK dalam Program Pengendalian Gratifikasi (PPG), maka Anda dapat melaporkan langsung di instansi Anda melalui Unit Pengendalian Gratifikasi (UPG).'
    },
    {
      'cardtext':
          'Tata Cara Pelaporan Gratifikasi',
      'judul':
          'Apa Yang Harus Dilakukan dan Disiapkan dalam Melaporkan Gratifikasi? \n \n',
      'isimodul':
          'Tata cara pelaporan penerimaan gratifikasi yang diatur dalam Pasal 16 huruf a Undang-Undang Nomor 30 Tahun 2002 tentang Komisi Pemberantasan Tindak Pidana Korupsi, menyebutkan bahwa laporan disampaikan secara tertulis dengan mengisi formulir sebagaimana ditetapkan oleh Komisi Pemberantasan Korupsi dengan melampirkan dokumen yang berkaitan dengan gratifikasi. Pasal ini mensyaratkan bahwa setiap laporan harus diformalkan dalam formulir gratifikasi, adapun formulir gratifikasi bisa diperoleh dengan cara mendapatkannya secara langsung dari Kantor KPK, mengunduh (download) dari situs resmi KPK (www.kpk.go.id/gratifikasi), memfotokopi formulir gratifikasi asli atau cara-cara lain sepanjang formulir tersebut merupakan formulir gratifikasi; sedangkan pada huruf b pasal yang sama menyebutkan bahwa formulir sebagaimana dimaksud pada huruf a sekurang-kurangnya memuat: \n1. Nama dan alamat lengkap penerima dan pemberi gratifikasi; \n2. Jabatan pegawai negeri atau penyelanggara negara; \n3. Tempat dan waktu penerimaan gratifikasi; \n4. Uraian jenis gratifikasi yang diterima; dan \n5. Nilai gratifikasi yang diterima. \n\nAtau hubungi Direktorat Gratifikasi \nTelepon : (021) 2557 8440 \nFacs : (021) 529 21230 \nemail : pelaporan.gratifikasi@kpk.go.id \nemodul : www.kpk.go.id/gratifikasi'
    },
    {
      'cardtext': 'Perlindungan Pelapor',
      'judul': 'Perlindungan Pelapor \n \n',
      'isimodul':
          'Pelapor gratifikasi berpotensi untuk menjadi saksi yang dapat memberikan keterangan guna kepentingan penyelidikan, penyidikan, penuntutan, dan pemeriksaan di sidang pengadilan tentang suatu perkara pidana yang ia dengar sendiri, ia lihat sendiri, dan/atau ia alami sendiri, oleh karena itu saksi yang berasal dari pelapor gratifikasi juga berhak mendapatkan perlindungan seperti yang diatur dalam Undang-Undang Nomor 13 tahun 2006 tentang Perlindungan Saksi dan Korban pasal 5 uruf a dan b yaitu: \n\na) memperoleh perlindungan atas keamanan pribadi, keluarga, dan harta bendanya, serta bebas dari Ancaman yang berkenaan dengan kesaksian yang akan, sedang, atau telah diberikannya \nb) ikut serta dalam proses memilih dan menentukan bentuk perlindungan dan dukungan keamanan'
    },
    {
      'cardtext': 'Gratifikasi Tidak Perlu dilaporkan',
      'judul': 'Gratifikasi yang Tidak Perlu dilaporkan \n \n',
      'isimodul':
          'Gratifikasi tidak selalu harus dilaporkan kepada KPK, oleh karena itu KPK menerbitkan Surat B-143/01-13/01/2013 tentang Himbauan Terkait Gratifikasi yang menyebutkan beberapa gratifikasi yang tidak perlu dilaporkan sebagaimana disebutkan dalam Surat KPK Nomor B- 143/01-13/01/2013 dalam butir 3 huruf a sd j dengan penjelasan sebagai berikut: \n\na)diperoleh dari hadiah langsung/undian, diskon/rabat, voucher, point rewards atau suvenir yang berlaku umum dan tidak terkait kedinasan; \nb)Diperoleh karena prestasi akademis atau non akademis (kejuaraan/perlombaan/kompetisi) dengan biaya sendiri dan tidak terkait kedinasan; \nc)diperoleh dari keuntungan/bunga dari penempatan dana, investasi atau kepemilikan saham yang berlaku umum dan tidak terkait kedinasan; \nd)diperoleh dari kompensasi atas profesi diluar kedinasan yang tidak terkait dari tupoksi pegawai negeri atau penylenggara negara, tidak melanggar konflik kepentingan atau kode etik pegawai dan dengan izin tertulis dari atasan langusng; \ne)diperoleh dari hubungan keluarga sedarah dalam garis keturunan lurus dua derajat atau dalam garis keturunan kesamping satu derajat sepanjang tidak mempunyai konflik kepentingan dengan penerima gratifikasi; \nf)diperoleh dari hubungan keluarga semenda dalam garis keturunan lurus satu derajat atau dalam garis keturunan kesamping satu derajat sepanjang tidak mempunyai konflik kepentingan dengan penerima gratifikasi; \ng)diperoleh dari pihak yang mempunyai hubungan keluarga sebagaimana dimaksud pada huruf f dan g terkait dengan hadiah perkawinan, khitanan anak, ulang tahun, kegiatan keagamaan/adat/tradisi dan bukan dari pihak-pihak yang mempunyai konflik kepentingan dengan penerima gratifikasi; \nh)diperoleh dari pihak terkait dengan musibah dan bencana, dan bukan dari pihak-pihak yang mempunyai konflik kepentingan dengan penerima gratifikasi; \ni)diperoleh dari kegiatan resmi kedinasan seperti rapat, seminar, workshop, konferensi, pelatihan atau kegiatan lain sejenis yang berlaku secara umum berupa seminar kit, sertifikat dan plakat/cinderamata, dan \nj)diperoleh dari acara resmi kedinasan dalam bentuk hidangan/ sajian/jamuan berupa makanan dan minuman yang berlaku umum'
    },
    {
      'cardtext': 'Contoh-Contoh Kasus Gratifikasi',
      'judul': 'Contoh-Contoh Kasus Gratifikasi \n \n',
      'isimodul':
          'Untuk memberikan pemahaman tentang gratifikasi dan penanganannya, berikut ini akan diuraikan beberapa contoh kasus gratifikasi baik yang dilarang berdasarkan ketentuan pasal 12B Undang-Undang Nomor 31 Tahun 1999 juncto Undang-Undang Nomor 20 Tahun 2001. Tentu saja hal ini hanya merupakan sebagian kecil saja dari situasi-situasi terkait gratifikasi yang seringkali terjadi. \n\nContoh-contoh pemberian yang dapat dikategorikan sebagai gratifi-kasi yang sering terjadi adalah: \n\n1. Pemberian hadiah atau parsel kepada pejabat pada saat hari raya keagamaan, oleh rekanan atau bawahannya \n2. Hadiah atau sumbangan pada saat perkawinan anak dari pejabat oleh rekanan kantor pejabat tersebut \n3. Pemberian tiket perjalanan kepada pejabat atau keluarganya untuk keperluan pribadi secara cuma-Cuma \n4. Pemberian potongan harga khusus bagi pejabat untuk pembelian barang dari rekanan \n5. Pemberian biaya atau ongkos naik haji dari rekanan kepada pejabat \n6. Pemberian hadiah ulang tahun atau pada acara-acara pribadi lainnya dari rekanan \n7. Pemberian hadiah atau souvenir kepada pejabat pada saat kunjungan kerja \n8. Pemberian hadiah atau uang sebagai ucapan terima kasih karena telah dibantu, dll'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(193, 52, 47, 1),
          title: Text(
            'Modul',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true),
      body: ListView(
        children: [
          ...(kontenmodul as List<Map<String, String>>).map((konten) {
            return modulcard(
              cardtext: konten['cardtext'],
              isimodul: konten['isimodul'],
              judul: konten['judul'],
            );
          }).toList()
        ],
      ),
    );
  }
}




// Center(
//               child: ElevatedButton(
//                   child: Text('Pengertian Gratifikasi'),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => pengertian()),
//                     );
//                   }),
//             ),
//             Center(
//               child: ElevatedButton(
//                   child: Text('Kategori Gratifikasi'),
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => kategori()));
//                   }),
//             ),
//             Center(
//               child: ElevatedButton(
//                   child: Text('Penerima yang wajib melaporkan'),
//                   onPressed: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => penerima()));
//                   }),
//             ),
//             Center(
//               child: ElevatedButton(
//                   child: Text('Konsekuensi bagi yang tidak melaporkan'),
//                   onPressed: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => konsekuensi()));
//                   }),
//             ),
//             Center(
//               child: ElevatedButton(
//                   child: Text('Gratifikasi Dikatakan Sebagai Tindak Pidana Korupsi'),
//                   onPressed: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => bilamana()));
//                   }),
//             ),
//             Center(
//               child: ElevatedButton(
//                   child: Text('Identifikasi Gratifikasi yang Dianggap Suap'),
//                   onPressed: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => bagaimana()));
//                   }),
//             ),
//             Center(
//               child: ElevatedButton(
//                   child: Text('Yang Harus Dilakukan saat Saya Menerima Gratifikasi'),
//                   onPressed: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => harus()));
//                   }),
//             ),
//             Center(
//               child: ElevatedButton(
//                   child: Text('Yang Harus Dilakukan dan Disiapkan dalam Melaporkan Gratifikasi'),
//                   onPressed: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => siapkan()));
//                   }),
//             ),
//             Center(
//               child: ElevatedButton(
//                   child: Text('Perlindungan Pelapor'),
//                   onPressed: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => perlindungan()));
//                   }),
//             ),
//             Center(
//               child: ElevatedButton(
//                   child: Text('Gratifikasi yang Tidak Perlu dilaporkan'),
//                   onPressed: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => dilaporkan()));
//                   }),
//             ),
//             Center(
//               child: ElevatedButton(
//                   child: Text('Contoh-Contoh Kasus Gratifikasi'),
//                   onPressed: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => kasus()));
//                   }),
//             ),