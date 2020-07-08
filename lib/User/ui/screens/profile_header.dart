import 'package:com/User/bloc/bloc_user.dart';
import 'package:com/User/model/user.dart';
import 'package:com/User/ui/widgets/button_bar.dart';
import 'package:com/User/ui/widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc userBloc;
  User user;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.active:
          case ConnectionState.done:
            return SizedBox(child: showProfileData(snapshot));
          default:
            return CircularProgressIndicator();
        }
      },
    );
    // final title = Text(
    //   'Profile',
    //   style: TextStyle(
    //       fontFamily: 'Roboto',
    //       color: Colors.white,
    //       fontWeight: FontWeight.bold,
    //       fontSize: 30.0),
    // );

    // return Container(
    //   margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
    //   child: Column(
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[title],
    //       ),
    //       UserInfo(
    //           'assets/images/avatar.jpg', 'Anahí Salgado', 'anahi@platzi.com'),
    //       ButtonsBar()
    //     ],
    //   ),
    // );
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("Usuario NO logeado");
      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar la información del usuario"),
          ],
        ),
      );
    } else {
      print("Usuario logrado");
      user = User(
        name: snapshot.data.displayName,
        email: snapshot.data.email,
        photoURL: snapshot.data.photoUrl,
      );
      final title = Text(
        'Profile',
        style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      );

      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[title],
            ),
            UserInfo(user),
            ButtonsBar()
          ],
        ),
      );
    }
  }
}
