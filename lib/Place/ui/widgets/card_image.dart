import 'package:com/widgets/floating_action_button_green.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String pathImage;
  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
        height: 350,
        width: 250,
        margin: EdgeInsets.only(top: 80.0, left: 20.0),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathImage)),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.7))
            ]));
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[card, FloatingActionButtonGreen()],
    );
  }
}