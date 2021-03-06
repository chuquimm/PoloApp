import 'package:com/place.dart';
import 'package:com/profile_place.dart';
import 'package:flutter/material.dart';

class ProfilePlacesList extends StatelessWidget {
  Place place = new Place(
      'Plaza de armas',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '123,123,123');
  Place place2 = new Place(
      'Ovalo Grau',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '321,321,321');
  Place place3 = new Place(
      'Universidad de Piura',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '321,321,321');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          ProfilePlace('assets/images/piura/plaza.jpg', place),
          ProfilePlace('assets/images/piura/ovalo.jpg', place2),
          ProfilePlace('assets/images/piura/udep.jpg', place3),
        ],
      ),
    );
  }
}
