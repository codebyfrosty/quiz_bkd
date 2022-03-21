import 'package:flutter/material.dart';

class menucard extends StatelessWidget {
  final String gambar;
  final String judul;
  final Widget tujuan;

  menucard({this.gambar, this.judul, this.tujuan});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => tujuan));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tujuan));
              },
              child: Ink.image(
                image: AssetImage(gambar),
                height: 160,
                width: 175,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(judul),
            )
          ],
        ),
      ),
    );
  }
}
