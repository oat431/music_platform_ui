import 'package:flutter/material.dart';
import 'package:jam_music_platform/screen/jam_jam_music_screen.dart';

class JamContent extends StatelessWidget {
  String content;
  double margin;
  double scale;
  JamContent({this.content, this.margin, this.scale});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(this.margin),
      width: MediaQuery.of(context).size.width,
      height: (MediaQuery.of(context).size.height) / 2.5,
      color: Colors.black,
      child: GestureDetector(
        onTap: () => {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => JamMusicScreen(),
            ),
            (route) => false,
          ),
        },
        child: Image.asset(
          this.content,
          scale: this.scale,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
