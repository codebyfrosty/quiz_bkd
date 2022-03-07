import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utama extends StatelessWidget {
  final Function logic;
  Utama(this.logic);
  // const Utama({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: RaisedButton(
                child: Text('Modul'),
                onPressed: null,
              ),
            ),
            Center(
              child: RaisedButton(
                child: Text('Quiz'),
                onPressed: logic, 
              ),
            ),
          ]),
    );
  }
}
