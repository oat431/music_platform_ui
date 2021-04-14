import 'package:flutter/material.dart';

class JamContent extends StatelessWidget {
  String content;
  double margin;
  double scale;
  JamContent({this.content, this.margin, this.scale});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(this.margin),
      width: MediaQuery.of(context).size.width,
      height: (MediaQuery.of(context).size.height) / 2.5,
      color: Colors.black,
      child: Image.asset(
        this.content,
        scale: this.scale,
      ),
    );
  }
}
