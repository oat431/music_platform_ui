import 'package:flutter/material.dart';
import 'package:jam_music_platform/component/jam_content_picture.dart';
import 'package:jam_music_platform/component/jam_floating_bottom_bar.dart';
import 'package:jam_music_platform/component/jam_profile_info.dart';
import 'package:jam_music_platform/component/jam_top_bar.dart';
import 'package:jam_music_platform/screen/jam_main_screen.dart';

class JamProfileScreen extends StatelessWidget {
  static String tag = 'ProfileScreen';
  String name;
  String address;
  JamProfileScreen({this.name, this.address});
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
        title: name,
        leading: 'assets/icon/Arrow - Left 2_0.png',
        function: () => {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => JamMainScreen(),
            ),
            (route) => false,
          )
        },
      ),
      body: Column(
        children: [
          JamProfileInfo(
            name: this.name,
            address: this.address,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                20,
                (index) {
                  return JamContent(
                    content: picture[index % 4],
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
