import 'package:flutter/material.dart';

import 'cards/modulcard.dart';

class Modul extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(193, 52, 47, 1),
          title: Text('Modul'),
          centerTitle: true),
      body: ListView(
        children: [
          
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