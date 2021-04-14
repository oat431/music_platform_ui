import 'package:flutter/material.dart';
import 'package:jam_music_platform/component/jam_comment.dart';
import 'package:jam_music_platform/component/jam_top_bar.dart';
import 'package:jam_music_platform/screen/jam_main_screen.dart';
import 'package:jam_music_platform/component/jam_content_picture.dart';
import 'package:jam_music_platform/component/jam_floating_bottom_bar.dart';

class JamMusicScreen extends StatelessWidget {
  List<String> picture = [
    'assets/image/music1.jpg',
    'assets/image/music2.jpg',
    'assets/image/music3.jpg',
    'assets/image/music4.jpg'
  ];
  static String tag = "MusicScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JamTopBar(
        title: 'Jam Board',
        leading: 'assets/icon/Arrow - Left 2_0.png',
        function: () => {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => JamMainScreen(),
              ),
              (route) => false)
        },
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
          20,
          (index) {
            return Container(
              child: Column(
                children: [
                  JamContent(
                    content: picture[index % 4],
                    margin: 0,
                    scale: 0.5,
                  ),
                  JamCommnet(),
                ],
              ),
            );
          },
        ),
      ),
      extendBody: true,
      bottomNavigationBar: JamBottomBar(),
    );
  }
}
