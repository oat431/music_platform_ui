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
      ],
    );
  }
}
