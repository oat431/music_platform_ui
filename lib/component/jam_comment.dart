import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class JamCommnet extends StatelessWidget {
  Widget _comment(String name, String content) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(content),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expandable(
      collapsed: ExpandableButton(
        child: Text(''),
      ),
      expanded: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ExpandableButton(
            child: Icon(Icons.chat),
          ),
          _comment('Sahachan T : ', 'I love it very nice'),
          _comment('Passakorn P :', 'Hey keep doing it'),
          _comment('FLower O : ', 'Can I Jam you sometime?'),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
