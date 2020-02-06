import 'package:flutter/material.dart';
import 'logIn.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned.fill(
        child: Image(
          image: AssetImage("images/welcome.png"),
          fit: BoxFit.fill,
        ),
      ),
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 88.0, left: 64.0),
                child: Text(
                  'Welcome!',
                  textDirection: TextDirection.ltr,
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 64.0),
                child: Text(
                  'to the language ocean',
                  style: TextStyle(
                    color: Color(0xffE4E4E4),
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                  child: Text('Log In'.toUpperCase()),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogIn()));
                  }),
            ],
          ),
        ],
      ),
    ]);
  }
}
