import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './modul.dart';
import './quiz1.dart';
import './quiz2.dart';
import './quiz3.dart';

class Home extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
        child: 
             Column(
                children: [
                  Text('Halaman Utama',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  Center(
                    child: RaisedButton(
                        child: Text('Modul'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Modul()),
                          );
                        }),
                  ),
                  Center(
                    child: RaisedButton(
                        child: Text('Quiz'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz1()));
                        }),
                  ),
                  Center(
                    child: RaisedButton(
                        child: Text('Studi Kasus'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz3()));
                        }),
                  ),
                  Center(
                    child: RaisedButton(
                        child: Text('Prove it!'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz2()));
                        }),
                  ),
                ],
              )
            );
  }
}
