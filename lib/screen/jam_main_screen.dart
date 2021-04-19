import 'package:flutter/material.dart';
import 'package:jam_music_platform/component/jam_top_bar.dart';
import 'package:jam_music_platform/component/jam_floating_bottom_bar.dart';
import 'package:jam_music_platform/component/jam_comment.dart';
import 'package:jam_music_platform/component/music_jammer_layout/jam_layout.dart';
import 'dart:math';

class JamMainScreen extends StatelessWidget {
  var rand = new Random();
  static String tag = 'MainScreen';
  List<String> picture = [
    'assets/image/music1.jpg',
    'assets/image/music2.jpg',
    'assets/image/music3.jpg',
    'assets/image/music4.jpg',
    'assets/image/Group 2.png',
    'assets/image/Group 4.png',
    'assets/image/Group 5.png',
    'assets/image/Group 6852.png'
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
                  JamMainScreenPictureLayout(
                    content: picture[rand.nextInt(8)],
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
