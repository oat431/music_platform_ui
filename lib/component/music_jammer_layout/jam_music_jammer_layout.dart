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
                  margin: EdgeInsets.only(top: 270, left: 30),
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
