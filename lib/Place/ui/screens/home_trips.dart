import 'package:com/Place/ui/widgets/description_place.dart';
import 'package:com/Place/ui/widgets/review_list.dart';
import 'package:flutter/material.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  // const HomeTrips({Key key}) : super(key: key);
  final String descriptionText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue lorem sapien, id ultricies mi hendrerit sed. Mauris congue dui purus, id dapibus urna posuere quis. Pellentesque efficitur, justo non imperdiet fringilla, nulla mi mollis nulla, sit amet malesuada justo sem quis ex.";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Piura", 4, descriptionText),
            ReviewList()
          ],
        ),
        HeaderAppbar()
      ],
    );
  }
}
