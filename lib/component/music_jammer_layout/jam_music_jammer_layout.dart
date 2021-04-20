import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:jam_music_platform/component/jam_comment.dart';
import 'package:jam_music_platform/component/jam_content_description.dart';
import 'package:jam_music_platform/component/jam_content_picture.dart';
import 'package:jam_music_platform/component/jam_content_info.dart';

class JamMusicScreenPictureLayout extends StatelessWidget {
  String content;
  double margin;
  double scale;
  JamMusicScreenPictureLayout({this.content, this.margin, this.scale});
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Column(
        children: [
          Stack(
            children: [
              JamContent(
                content: content,
                margin: margin,
                scale: scale,
              ),
              ExpandableButton(
                child: Container(
                  margin: EdgeInsets.only(top: 280, left: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.chat,
                        color: Colors.white,
                      ),
                      Text(
                        '120k',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 250, left: MediaQuery.of(context).size.width * 0.46),
                child: Column(
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Jam',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 230, left: MediaQuery.of(context).size.width * 0.75),
                child: Row(
                  children: [
                    Text(
                      'Save To',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 280, left: MediaQuery.of(context).size.width * 0.8),
                child: Row(
                  children: [
                    Text(
                      '120k',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
          JamContentInfo(),
          SizedBox(
            height: 10,
          ),
          ExpandableNotifier(
            child: ScrollOnExpand(
              child: JamContentDescription(),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScrollOnExpand(
            child: JamCommnet(),
          ),
        ],
      ),
    );
  }
}
