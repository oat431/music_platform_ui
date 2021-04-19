import 'package:flutter/material.dart';

class JamProfileInfo extends StatelessWidget {
  String name;
  String address;
  JamProfileInfo({this.name, this.address});

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

  Widget _contentBox(Widget child) {
    return Container(
      margin: EdgeInsets.all(20),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _imageBox('assets/image/music1.jpg', 2, 3.80, 7.8, context),
                _contentBox(
                  Column(
                    children: [
                      Text(
                        '18k',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Followers'),
                    ],
                  ),
                ),
                _contentBox(
                  Column(
                    children: [
                      Text(
                        '18k',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Following'),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 10, top: 11),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(this.address),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _imageBox('assets/icon/Category.png', 16, 15, 28, context),
                _imageBox('assets/icon/Bookmark.png', 16, 15, 28, context),
                _imageBox('assets/icon/Paper Plus.png', 16, 15, 28, context),
                _imageBox('assets/icon/Bag.png', 16, 15, 28, context),
              ],
            )
          ],
        ),
      ),
    );
  }
}
