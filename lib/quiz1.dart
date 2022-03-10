//quiz pengetahuan gratifikasi code

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class Quiz1 extends StatefulWidget {
  // const Quiz1({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  
  final questions = const [
 

    {
      'questionText': 'Jenis Gratifikasi dibawah ini tidak wajib dilaporkan, kecuali?',
      'answers': [
        {'text': 'Pemberian setelah melaksanakan tugas pelayanan', 'score': 1},
        {'text': 'Mendapat cinderamata dari kegiatan resmi dinas seperti rapat dan seminar', 'score': 0},
        {'text': 'Adanya hubungan keluarga, sepanjang tidak memiliki kepentingan', 'score': 0},
        {'text': 'Terkait musibah atau bencana paling banyak Rp.1.000.000,-', 'score': 0}

      ],
    },
    {
      'questionText': 'Aturan hukum gratifikasi, diatur dalam?',
      'answers': [
        {'text': 'Pasal 12B dan 12C Undang-Undang Nomor 31 Tahun 1999', 'score': 0},
        {'text': 'Pasal 12b dan 12c Undang-Undang Nomor 20 Tahun 2001', 'score': 0},
        {'text': 'Pasal 12b dan 12c Undang-Undang Nomor 31 Tahun 1999', 'score': 0},
        {'text': 'Pasal 12B dan 12C Undang-Undang Nomor 20 Tahun 2001', 'score': 1}
      ],
    },
    {
      'questionText': 'Apa yang dimaksud dengan UPG dalam tubuh KPK?',
      'answers': [
        {'text': 'Unit Pemegang Gratifikasi', 'score': 0},
        {'text': 'Unit Pengelola Gratifikasi', 'score': 0},
        {'text': 'Unit Pengadaan Gratifikasi', 'score': 0},
        {'text': 'Unit Pengendalian Gratifikasi', 'score': 1}
      ],
    },
    {
      'questionText': 'Batas waktu penyerahan barang atau uang gratifiaksi ke KPK jika telah ditetapkan milik Negara adalah?',
      'answers': [
        {'text': '7 hari kerja', 'score': 1},
        {'text': '21 hari kerja', 'score': 0},
        {'text': '30 hari kerja', 'score': 0},
        {'text': '60 hari kerja', 'score': 0}
      ],
    },
    {
      'questionText': 'Gratifikasi akan dianggap sebagai suap, apabila?',
      'answers': [
        {'text': 'Penerimaan dalam rangka kedinasan', 'score': 0},
        {'text': 'Penerima adalah seorang Pegawai Negeri Sipil atau Penyelenggara Negara', 'score': 0},
        {'text': 'Berhubungan dengan jabatan dan berlawanan dengan kewajiban atau tugas penerima', 'score': 1},
        {'text': 'Penerimaan dilakukan dalam acara formal kedinasan', 'score': 0}
      ],
    },




  ];

  var questionIndex = 0;
  var totalscore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    totalscore = totalscore + score;
    // totalscore += score;

    if (questionIndex < questions.length) {
      print('We have more questions!');
    }

    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZZ SATUU'),
      ),
      body: questionIndex < questions.length
          ? Quiz(questions, _answerQuestion, questionIndex)
          : Result(totalscore, resetQuiz),
    );
  }
}

