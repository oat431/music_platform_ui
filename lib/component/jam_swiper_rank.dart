import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class JamSwiper extends StatelessWidget {
  List<String> rank = ["1", "3", "2", "5"];
  List<String> way = ["12", "58", "11", "4"];
  Widget _jamStatus(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              color: Colors.blue[400], borderRadius: BorderRadius.circular(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _jamStatus(rank[index % 4]),
              _jamStatus('-'),
              _jamStatus(way[index % 4]),
            ],
          ),
        );
      },
      itemCount: 10,
      viewportFraction: 0.2,
      scale: 0.4,
      fade: 0.1,
    );
  }
}
