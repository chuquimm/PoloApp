import 'package:com/Place/ui/widgets/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget {
  // const CardImageList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/piura/plaza.jpg"),
          CardImage("assets/images/piura/ovalo.jpg"),
          CardImage("assets/images/piura/udep.jpg"),
        ],
      ),
    );
  }
}
