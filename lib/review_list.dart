import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  static const String pathImage = "assets/images/avatar.jpg";
  static const String name = "Marco Polo";
  static const String info = "1 review 3 photos";
  static const String comment = "Proin malesuada justo orci";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Review(pathImage, name, info, comment),
          Review(pathImage, name, info, comment),
          Review(pathImage, name, info, comment)
        ],
      ),
    );
  }
}
