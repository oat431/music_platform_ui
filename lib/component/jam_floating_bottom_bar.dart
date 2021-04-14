import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:jam_music_platform/screen/jam_profile_screen.dart';
import 'package:jam_music_platform/screen/jam_main_screen.dart';
import 'package:flutter/material.dart';

class JamBottomBar extends StatefulWidget {
  @override
  _JamBottomBarState createState() => _JamBottomBarState();
}

class _JamBottomBarState extends State<JamBottomBar> {
  int _index = 0;
  _checkScreen() {
    switch (_index) {
      case 0:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => JamMainScreen(),
          ),
          (route) => false,
        );
        break;
      case 1:
        print('something');
        break;
      case 2:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => JamProfileScreen(
              name: 'Sahachan',
              address: 'Thailand Pinonist',
            ),
          ),
          (route) => false,
        );
        break;
      default:
        print('no such a index');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingNavbar(
      onTap: (int index) => {setState(() => _index = index), _checkScreen()},
      currentIndex: _index,
      items: [
        FloatingNavbarItem(icon: Icons.home_rounded, title: ''),
        FloatingNavbarItem(icon: Icons.add_circle_outline, title: ''),
        FloatingNavbarItem(icon: Icons.person_outline_rounded, title: '')
      ],
      fontSize: 1,
      backgroundColor: Colors.white,
      borderRadius: 30,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
      width: 356,
      iconSize: 36,
      padding: EdgeInsets.only(top: 2, bottom: 2),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    );
  }
}
