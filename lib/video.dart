import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  // const MyVideoPlayer({ Key? key }) : super(key: key);

  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  VideoPlayerController controller;

  final String _teks =
      'Tata cara pelaporan penerimaan gratifikasi yang diatur dalam Pasal 16 huruf a Undang-Undang Nomor 30 Tahun 2002 tentang Komisi Pemberantasan Tindak Pidana Korupsi, menyebutkan bahwa laporan disampaikan secara tertulis dengan mengisi formulir sebagaimana ditetapkan oleh Komisi Pemberantasan Korupsi dengan melampirkan dokumen yang berkaitan dengan gratifikasi. Pasal ini mensyaratkan bahwa setiap laporan harus diformalkan dalam formulir gratifikasi, adapun formulir gratifikasi bisa diperoleh dengan cara mendapatkannya secara langsung dari Kantor KPK, mengunduh (download) dari situs resmi KPK (www.kpk.go.id/gratifikasi), memfotokopi formulir gratifikasi asli atau cara-cara lain sepanjang formulir tersebut merupakan formulir gratifikasi; sedangkan pada huruf b pasal yang sama menyebutkan bahwa formulir sebagaimana dimaksud pada huruf a sekurang-kurangnya memuat: \n1. Nama dan alamat lengkap penerima dan pemberi gratifikasi; \n2. Jabatan pegawai negeri atau penyelanggara negara; \n3. Tempat dan waktu penerimaan gratifikasi; \n4. Uraian jenis gratifikasi yang diterima; dan \n5. Nilai gratifikasi yang diterima. \n\nAtau hubungi Direktorat Gratifikasi \nTelepon : (021) 2557 8440 \nFacs : (021) 529 21230 \nemail : pelaporan.gratifikasi@kpk.go.id \nemodul : www.kpk.go.id/gratifikasi';

  String dataSource =
      "https://shivanesboutique.com/pub/media/S_MAM_VIDEO_10042021.mp4";
  String asset = "assets/videos/videomascakra.mp4";

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..initialize().then((_) {
        setState(() {});
      });

    controller.play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(193, 52, 47, 1),
        title: Text("Video Prove It"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          controller.value.isInitialized
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                    });
                  },
                  child: AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  ),
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),



          Flexible(
            child: SingleChildScrollView(
              child: new RichText(
                text: TextSpan(
                    text:
                        'Bilamana Gratifikasi Dikatakan Sebagai Tindak Pidana Korupsi? \n \n',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: _teks,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal))
                    ]),
              ),
            ),
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(193, 52, 47, 1),
        onPressed: () {
          setState(() {
            if (controller.value.isPlaying) {
              controller.pause();
            } else {
              controller.play();
            }
          });
        },
        child:
            Icon(controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
