import 'dart:math';

import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:jam_music_platform/screen/jam_profile_screen.dart';

class JamContentInfo extends StatelessWidget {
  List<String> name = [
    'Sahachan T.',
    'Flowero O.',
    'Thitisan Ch.',
    'Sirapop T.'
  ];
  List<String> address = [
    'Thailand Pinonist',
    'China Vocal',
    'USA Cello',
    'Sweden violin',
  ];

  Widget _getCommentContent(BuildContext context, String name, String address) {
    return GestureDetector(
      onTap: () => {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => JamProfileScreen(
              name: name,
              address: address,
            ),
          ),
          (route) => false,
        )
      },
      child: Text(
        name + '/',
      ),
    );
  }

  var rand = new Random();

  Widget _contentInfo(BuildContext context) {
    return ExpandableNotifier(
      child: Column(
        children: [
          Expandable(
            collapsed: ExpandableButton(
              child: Icon(
                Icons.keyboard_arrow_down,
              ),
            ),
            expanded: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/image/music4.jpg'),
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
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30, left: 30, top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Jam:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      for (var i = 0; i < rand.nextInt(2) + 1; i++)
                        _getCommentContent(
                          context,
                          name[rand.nextInt(4)],
                          address[rand.nextInt(4)],
                        ),
                    ],
                  ),
                ],
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.favorite_border_outlined),
                    Text('120k'),
                  ],
                ),
              ),
            ],
          ),
          _contentInfo(context),
        ],
      ),
    );
  }
}
