import 'package:flutter/material.dart';
import 'welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phrazer',
      theme: ThemeData(
        fontFamily: 'Arial',
        textTheme: TextTheme(
          headline: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
        ),
        primaryColor: Color(0xffE4E4E4),
      ),
      home: Welcome(),
    );
  }
}
