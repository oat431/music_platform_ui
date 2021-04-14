import 'package:flutter/material.dart';
import 'package:jam_music_platform/component/jam_top_bar.dart';
import 'package:jam_music_platform/component/jam_floating_bottom_bar.dart';
import 'package:jam_music_platform/component/jam_comment.dart';
import 'package:jam_music_platform/component/jam_content_picture.dart';

class JamMainScreen extends StatelessWidget {
  static String tag = 'MainScreen';
  List<String> picture = [
    'assets/image/music1.jpg',
    'assets/image/music2.jpg',
    'assets/image/music3.jpg',
    'assets/image/music4.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JamTopBar(
        title: "Stage",
        leading: 'assets/icon/Search_0.png',
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
          100,
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
