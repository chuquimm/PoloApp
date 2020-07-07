import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  // FloatingActionButtonGreen({Key key}) : super(key: key);
  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool isFav = false;
  void onPressedFav() {
    Scaffold.of(context).showSnackBar(SnackBar(
        content:
            Text(isFav ? "Quitando de favoritos" : "Agregaste a favoritos")));
    setState(() {
      isFav ? isFav = false : isFav = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: Colors.green,
      mini: true,
      tooltip: "Like",
      child: Icon(isFav ? Icons.favorite : Icons.favorite_border),
    );
  }
}
