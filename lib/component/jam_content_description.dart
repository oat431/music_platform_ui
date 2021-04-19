import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class JamContentDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expandable(
      collapsed: ExpandableButton(
        child: Icon(
          Icons.keyboard_arrow_down,
        ),
      ),
      expanded: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset('assets/image/music4.jpg'),
              Column(
                children: [
                  Text('name'),
                  Text('address'),
                ],
              ),
            ],
          ),
          Container(
            child: Text('something'),
          ),
          Container(
            child: Text('someting'),
          ),
          ExpandableButton(
            child: Icon(
              Icons.keyboard_arrow_up,
            ),
          ),
        ],
      ),
    );
  }
}
