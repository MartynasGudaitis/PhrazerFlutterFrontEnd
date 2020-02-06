import 'package:flutter/material.dart';
import 'home.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned.fill(
        child: Image(
          image: AssetImage("images/logIn.png"),
          fit: BoxFit.fill,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 100.0, left: 100.0),
        child: RaisedButton(
            child: Text('Log In'.toUpperCase()),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            }),
      )
    ]);
  }
}
