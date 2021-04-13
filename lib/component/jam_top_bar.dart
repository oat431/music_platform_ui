import 'package:flutter/material.dart';

class JamTopBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  String leading;
  Function function;
  JamTopBar({this.title, this.leading, this.function});
  @override
  Size get preferredSize => const Size.fromHeight(50);

  Widget _imageBox(String name) {
    return Image.asset(
      name,
      scale: 2,
    );
  }

  Widget _actionButton(String icon) {
    return GestureDetector(
      onTap: () => {},
      child: _imageBox(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: this.function,
        child: _imageBox(leading),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        _actionButton('assets/icon/Send_0.png'),
        _actionButton('assets/icon/Notification_0.png'),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
