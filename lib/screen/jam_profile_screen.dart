import 'package:flutter/material.dart';
import 'package:jam_music_platform/component/jam_content_picture.dart';
import 'package:jam_music_platform/component/jam_floating_bottom_bar.dart';
import 'package:jam_music_platform/component/jam_profile_info.dart';
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
      body: Column(
        children: [
          JamProfileInfo(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                20,
                (index) {
                  return JamContent(
                    content: 'item $index',
                    margin: 10,
                  );
                },
              ),
            ),
          )
        ],
      ),
      extendBody: true,
      bottomNavigationBar: JamBottomBar(),
    );
  }
}
