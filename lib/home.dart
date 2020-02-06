import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<Home> {
  // Change url every time new ngrok tunel is created
  final String url = 'http://7f940d5a.ngrok.io/api/v1/category/';
  List categories;

  @override
  void initState() {
    super.initState();
    this.getCategories();
  }

  Future<String> getCategories() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {'Accept': 'application/json'});

    if (response.statusCode == 200) {
      setState(() {
        var responseJson = json.decode(response.body);
        categories = responseJson;
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    return 'Success';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'.toUpperCase()),
        backgroundColor: Color(0xff0EA697),
      ),
      body: ListView.builder(
        itemCount: categories == null ? 1 : categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    child: Container(
                      child: Text(categories == null
                          ? 'No data'
                          : categories[index]['name'].toString()),
                      padding: EdgeInsets.all(20.0),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Color(0xffF2685B),
      ),
      backgroundColor: Color(0xff033135),
    );
  }
}

/*
class Category {
  final int id;
  final String name;
  final String dateCreated;
  final String dateModified;
  final String icon;

  Category(
      {this.id, this.name, this.dateCreated, this.dateModified, this.icon});
}
*/
