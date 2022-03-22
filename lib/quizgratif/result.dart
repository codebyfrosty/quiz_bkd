import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Rlt({ Key? key }) : super(key: key);

  final Function reset;
  final int resultScore;
  // Function hideQ;
  Result(this.resultScore, this.reset);

  int get jmlsalah {
    var salah = 10 - resultScore;
    return salah;
  }

  String get bener {
    var jawabanbenar = resultScore.toString() + '/10';
    return jawabanbenar;
  }

  String get salah {
    var jawabansalah = jmlsalah.toString() + '/10';

    return jawabansalah;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(224, 101, 101, 1),
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            width: MediaQuery.of(context).size.width,
            height: 230,
            // color: Color.fromRGBO(224, 101, 101, 1),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/piagam.png',
                  height: 150,
                ),
                Text(
                  'Selamat!',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 0, bottom: 7),
                  child: Text(
                    'Hasil Quiz Anda :',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border(right: BorderSide(color: Colors.grey))),
                      width: MediaQuery.of(context).size.width / 2,
                      // color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_circle_rounded,
                            size: 50,
                            color: Colors.lightGreenAccent.shade400,
                          ),
                          Column(
                            children: [
                              Text(
                                bener,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Benar',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      // color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cancel,
                            size: 50,
                            color: Colors.red,
                          ),
                          Column(
                            children: [
                              Text(
                                salah,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Salah',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey,
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 0,),
                        child: Text(
                          'Kunci Jawaban :',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Flexible(
                        child: ListView(
                          children: [
                            
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: reset,
              child: Text('Coba Lagi'),
            ),
          )
        ],
      ),
    );
  }
}
