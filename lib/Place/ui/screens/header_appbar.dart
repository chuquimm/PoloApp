import 'package:com/Place/ui/widgets/card_image_list.dart';
import 'package:com/widgets/gradient_back.dart';
import 'package:flutter/material.dart';

class HeaderAppbar extends StatelessWidget {
  // const HeaderAppbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack("Polo Places"), CardImageList()],
    );
  }
}
