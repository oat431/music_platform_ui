import 'package:custom_navigation_bar/custom_navigation_bar.dart';
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
    return CustomNavigationBar(
      onTap: (int index) => {setState(() => _index = index), _checkScreen()},
      currentIndex: _index,
      items: [
        CustomNavigationBarItem(
          icon: Image.asset('assets/icon/home_3.png'),
        ),
        CustomNavigationBarItem(
          icon: Image.asset('assets/icon/PlusCircle.png'),
        ),
        CustomNavigationBarItem(
          icon: Image.asset('assets/icon/UserCircle.png'),
        ),
      ],
      iconSize: 30,
      backgroundColor: Colors.white,
      unSelectedColor: Colors.black,
      selectedColor: Colors.black,
      borderRadius: Radius.circular(30),
      isFloating: true,
    );
  }
}
