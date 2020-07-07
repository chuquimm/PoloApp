import 'package:com/card_image_list.dart';
import 'package:com/gradient_back.dart';
import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  // const HeaderAppbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Polo Places"),
        CardImageList()
      ],
    );
  }
}
