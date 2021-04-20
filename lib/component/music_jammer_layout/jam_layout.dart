import 'package:flutter/material.dart';
import 'package:jam_music_platform/component/jam_content_picture.dart';

class JamMainScreenPictureLayout extends StatelessWidget {
  String content;
  double margin;
  double scale;
  JamMainScreenPictureLayout({this.content, this.margin, this.scale});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        JamContent(
          content: content,
          margin: margin,
          scale: scale,
        ),
        Container(
          margin: EdgeInsets.only(top: 130, left: 30),
          child: Column(
            children: [
              RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'Disallow to Jam\nand advertising',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Icon(
                  Icons.shield,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 230, left: MediaQuery.of(context).size.width * 0.75),
          child: Row(
            children: [
              Text(
                'Save To',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 280, left: MediaQuery.of(context).size.width * 0.8),
          child: Row(
            children: [
              Text(
                '120k',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
