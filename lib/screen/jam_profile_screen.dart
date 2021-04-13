import 'package:flutter/material.dart';
import 'package:jam_music_platform/component/jam_floating_bottom_bar.dart';
import 'package:jam_music_platform/component/jam_top_bar.dart';
import 'package:jam_music_platform/screen/jam_main_screen.dart';

class JamProfileScreen extends StatelessWidget {
  static String tag = 'ProfileScreen';
  String name;
  JamProfileScreen({this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JamTopBar(
        title: name,
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
      body: Container(),
      bottomNavigationBar: JamBottomBar(),
    );
  }
}
