import 'package:com/User/bloc/bloc_user.dart';
import 'package:com/polo_trips.dart';
import 'package:com/widgets/button_blue.dart';
import 'package:com/widgets/gradient_back.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData || snapshot.hasError) {
          // if (true) {
          return signInGoogleUI();
        } else {
          return PoloTrips();
        }
      },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Bienvenido\nEsta es tu aplicación de viajes.",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Roboto",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ButtonBlue(
                text: "Iniciar sesión",
                onPressed: () {
                  userBloc.signOut();
                  userBloc.signIn().then((AuthResult auth) =>
                      print("El usuario es ${auth.user.displayName}"));
                },
                width: 300,
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
