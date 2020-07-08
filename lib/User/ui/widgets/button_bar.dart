import 'package:com/User/bloc/bloc_user.dart';
import 'package:com/User/ui/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ButtonsBar extends StatelessWidget {
  static UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            // Change password
            CircleButton(
                true, Icons.vpn_key, 20.0, Color.fromRGBO(255, 255, 255, 0.6),
                () {
              print("Cambiar conttraseña");
            }),
            // Add new place
            CircleButton(
                false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1), () {
              print("Agregar lugar");
            }),
            // SignOut
            CircleButton(true, Icons.exit_to_app, 20.0,
                Color.fromRGBO(255, 255, 255, 0.6), () {
              userBloc.signOut();
            }),
          ],
        ));
  }
}
