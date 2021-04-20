import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class JamCommnet extends StatelessWidget {
  Widget _reply(String replyName, String replyContent) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 40),
      child: Row(
        children: [
          Text(
            '$replyName : ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            replyContent,
          ),
        ],
      ),
    );
  }

  Widget _replyComponent() {
    return ExpandableNotifier(
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('20 Like '),
                Text(' | '),
                ExpandableButton(
                  child: Text('8 reply'),
                ),
              ],
            ),
            ScrollOnExpand(
              child: Expandable(
                collapsed: Text(''),
                expanded: ExpandableButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _reply('Thitisan C.', 'Couldn\'t agree more'),
                      _reply('Sirapop T.', 'I need to jam with you'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _comment(String name, String content) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 40),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '$name : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(content),
            ],
          ),
          _replyComponent(),
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
          _comment('Sahachan T', 'I love it very nice'),
          _comment('Passakorn P', 'Hey keep doing it'),
          _comment('FLower O', 'Can I Jam you sometime?'),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
