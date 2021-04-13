import 'package:flutter/material.dart';
import 'package:jam_music_platform/screen/jam_jam_camera_screen.dart';
import 'package:jam_music_platform/screen/jam_jam_music_screen.dart';
import 'package:jam_music_platform/screen/jam_main_screen.dart';
import 'package:jam_music_platform/screen/jam_profile_screen.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    JamMainScreen.tag: (context) => JamMainScreen(),
    JamMusicScreen.tag: (context) => JamMusicScreen(),
    JamCameraScreen.tag: (context) => JamCameraScreen(),
    JamProfileScreen.tag: (context) => JamProfileScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'SFProText',
      ),
      title: "Jam Music app",
      home: JamMainScreen(),
      routes: routes,
    );
  }
}
