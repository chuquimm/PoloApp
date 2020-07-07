import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  // const Review({Key key}) : super(key: key);

  final String pathImage;
  final String name;
  final String info;
  final String comment;
  Review(this.pathImage, this.name, this.info, this.comment);
  @override
  Widget build(BuildContext context) {
    // final contactButton = Container(
    //   margin: EdgeInsets.only(left: 10.0, right: 3.0),
    //   child: Icon(Icons.star, color: Color(0xFFf2c611)),
    // );
    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        info,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Roboto", fontSize: 12),
      ),
    );
    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Roboto", fontSize: 16),
      ),
    );
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Roboto", fontSize: 16),
      ),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(image: AssetImage(pathImage), fit: BoxFit.cover)),
    );
    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
