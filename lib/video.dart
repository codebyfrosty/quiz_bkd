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
      'Isi Modul Prove It \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eget nulla ligula. Integer porttitor nulla eget erat placerat, et iaculis lacus egestas. Nunc luctus odio vitae massa bibendum, vel luctus massa ultrices. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec pulvinar tristique suscipit. Donec dictum risus mauris, vel sagittis quam tincidunt et. Phasellus sed ante eget elit aliquet iaculis eget non mauris. Morbi diam ligula, eleifend et urna at, facilisis accumsan lectus.';

  // String dataSource =
  //     "https://shivanesboutique.com/pub/media/S_MAM_VIDEO_10042021.mp4";
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RichText(
                  text: TextSpan(
                      text:
                          'Judul Modul Prove It \n \n',
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
