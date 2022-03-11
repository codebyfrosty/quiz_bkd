import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/moduls/kategori.dart';
import 'package:flutter_complete_guide/moduls/konsekuensi.dart';
import 'package:flutter_complete_guide/moduls/penerima.dart';

import './moduls/pengertian.dart';

class Modul extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Modul'),
        ),
        body: Container(
            child: Column(
          children: [
            Text('Pilih topik bahasan',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            Center(
              child: ElevatedButton(
                  child: Text('Pengertian Gratifikasi'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pengertian()),
                    );
                  }),
            ),
            Center(
              child: ElevatedButton(
                  child: Text('Kategori Gratifikasi'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => kategori()));
                  }),
            ),
            Center(
              child: ElevatedButton(
                  child: Text('Penerima yang wajib melaporkan'),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => penerima()));
                  }),
            ),
            Center(
              child: ElevatedButton(
                  child: Text('Konseskuensi bagi yang tidak melaporkan'),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => konsekuensi()));
                  }),
            ),
          ],
        )));
  }
}
