import 'package:flutter/material.dart';

class menucard extends StatelessWidget {
  final String gambar;
  final String judul;
  final Widget tujuan;

  menucard({this.gambar, this.judul, this.tujuan});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => tujuan));
      },
      child: Card(
        // clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: Image.asset(
                gambar,
                height: 132,
                width: 160,
                fit: BoxFit.fitHeight,
              ),
            ),
            FlatButton(
              child: Text(judul),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tujuan));
              },
            ),
          ],
        ),
      ),
    );
  }
}
