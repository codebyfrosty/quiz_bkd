import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cards/menucard.dart';
import './modul.dart';
import './quiz1.dart';
import './quiz2.dart';
import './quiz3.dart';
import 'cards/videocard.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: video(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 0, left: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              menucard(
                gambar: 'assets/images/palu.png',
                judul: 'Modul',
                tujuan: Modul(),
              ),
              menucard(
                gambar: 'assets/images/tanda_tanya.jpg',
                judul: 'Quiz Gratifikasi',
                tujuan: Quiz1(),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            menucard(
              gambar: 'assets/images/nolak_gratif.jpg',
              judul: 'Prove It!',
              tujuan: Quiz2(),
            ),
            menucard(
              gambar: 'assets/images/studikasus.jpg',
              judul: 'Studi Kasus',
              tujuan: Quiz3(),
            ),
          ],
        ),
      ],
    ));
  }
}
