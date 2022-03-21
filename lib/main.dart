import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

import './home.dart';


void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  Color _appbarBG = const Color.fromRGBO(193, 52, 47, 1);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: _appbarBG
      ),
      // debugShowCheckedModeBanner:false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: _appbarBG,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', height: 38,),
                ],
              ),
              
            ),
            body: Home(),
            // drawer: Drawer(),
            
            ));
  }
}
