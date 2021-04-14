import 'package:flutter/material.dart';

class JamCommnet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30, left: 30, top: 10),
      child: Row(
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
                  Text('Sahachan T.'),
                  Text(' / '),
                  Text('Flowero O'),
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
    );
  }
}
