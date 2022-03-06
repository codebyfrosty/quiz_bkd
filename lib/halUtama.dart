import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utama extends StatelessWidget {
  // const Utama({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Modul'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Quiz'),
              onPressed: null,
            ),
          ]),
    );
  }
}
