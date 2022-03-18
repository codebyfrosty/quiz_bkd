import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/video.dart';

class video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    
    InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyVideoPlayer()));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset('assets/images/video.png', height: 240, width: 390, fit: BoxFit.fitHeight,),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'PROVE IT - CARA PEMBUKTIAN GRATIFIKASI',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
