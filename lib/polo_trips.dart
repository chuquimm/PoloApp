import 'package:com/Place/ui/screens/home_trips.dart';
import 'package:com/Place/ui/screens/search_trips.dart';
import 'package:com/User/ui/screens/profile_trips.dart';
import 'package:flutter/material.dart';

class PoloTrips extends StatefulWidget {
  // PoloTrips({Key key}) : super(key: key);
  @override
  _PoloTripsState createState() => _PoloTripsState();
}

class _PoloTripsState extends State<PoloTrips> {
  int indexTap = 0;

  final List<Widget> widgetsChildrens = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildrens[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.green),
          child: BottomNavigationBar(
              currentIndex: indexTap,
              onTap: onTapTapped,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text("")),
              ])),
    );
  }
}
