import 'package:flutter/material.dart';
import 'button_orage.dart';

class DescriptionPlace extends StatelessWidget {
  // const DescriptionPlace({Key key}) : super(key: key);
  final String namePlace;
  final int stars;
  final String descriptionPlace;
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(Icons.star_half, color: Color(0xFFf2c611)),
    );
    final starBorder = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(Icons.star_border, color: Color(0xFFf2c611)),
    );
    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(Icons.star, color: Color(0xFFf2c611)),
    );
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            starHalf,
            starBorder,
          ],
        ),
        // description
      ],
    );
    final description = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
        textAlign: TextAlign.justify,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleStars, description, ButtonOrange("Navegar")],
    );
    // return Container(
    //   child: child,
    // );
  }
}
