import 'package:flutter/material.dart';

class Modul extends StatelessWidget {
  // const Modul({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modul Materi'),
      ),
      body: Column(children: [
        Text(
          'Ini nanti isinya modul',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        // RaisedButton(
        //   onPressed: () {},
        //   child: Text('Mulai Quiz'),
        
      ]),
    );

    //  Column(children: [
    //    Text(
    //       'Ini nanti isinya modul',
    //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    //     ),

    //   RaisedButton(onPressed: (){

    //   },
    //   child: Text('Mulai Quiz'),)
    // ]);
  }
}
