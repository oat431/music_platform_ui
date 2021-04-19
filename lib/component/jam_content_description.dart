import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class JamContentDescription extends StatelessWidget {
  Widget _imageBox(String pictureName, double scale, double width,
      double height, BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / height,
      width: MediaQuery.of(context).size.width / width,
      margin: EdgeInsets.only(right: 12, left: 12, top: 11),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pictureName),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
    );
  }

  Widget _contentBox(Widget child, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.all(20),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expandable(
      collapsed: ExpandableButton(
        child: Icon(
          Icons.keyboard_arrow_down,
        ),
      ),
      expanded: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              _imageBox('assets/image/music1.jpg', 2, 3.80, 7.8, context),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name'),
                  Text('address'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _contentBox(
                      Text('instrumental : musician',
                          textAlign: TextAlign.left),
                      context),
                  _contentBox(
                      Text(
                          'something something something somethigns omsehtimg somsoeoasjfkl;asd;lkj',
                          textAlign: TextAlign.left),
                      context),
                ],
              ),
            ],
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
