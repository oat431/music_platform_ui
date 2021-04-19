import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class JamCommnet extends StatelessWidget {
  Widget _comment(String name, String content) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(content),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expandable(
      collapsed: ExpandableButton(
        child: Icon(Icons.chat),
      ),
      expanded: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ExpandableButton(
            child: Icon(Icons.chat),
          ),
          _comment('name:', 'content'),
          _comment('name:', 'content'),
          _comment('name:', 'content'),
        ],
      ),
    );
  }
}
