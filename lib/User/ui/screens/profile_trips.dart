import 'package:com/User/ui/screens/profile_header.dart';
import 'package:com/User/ui/widgets/profile_background.dart';
import 'package:com/User/ui/widgets/profile_places_list.dart';
import 'package:flutter/material.dart';

class ProfileTrips extends StatelessWidget {
  // const ProfileTrips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return Container(
      color: Colors.indigo,
    );*/
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[ProfileHeader(), ProfilePlacesList()],
        ),
      ],
    );
  }
}
