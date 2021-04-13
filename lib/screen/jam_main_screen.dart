import 'package:flutter/material.dart';
import 'package:jam_music_platform/component/jam_top_bar.dart';
import 'package:jam_music_platform/component/jam_floating_bottom_bar.dart';

class JamMainScreen extends StatelessWidget {
  static String tag = 'MainScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JamTopBar(
        title: "Stage",
        leading: 'assets/icon/Search_0.png',
      ),
      body: Container(),
      bottomNavigationBar: JamBottomBar(),
    );
  }
}
