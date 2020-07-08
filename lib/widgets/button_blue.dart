import 'package:flutter/material.dart';

class ButtonBlue extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onPressed;

  ButtonBlue(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.height,
      this.width});

  @override
  _ButtonBlueState createState() => _ButtonBlueState();
}

class _ButtonBlueState extends State<ButtonBlue> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.blue[400]],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 18.0, fontFamily: "Roboto", color: Colors.white),
          ),
        ),
      ),
    );
  }
}
