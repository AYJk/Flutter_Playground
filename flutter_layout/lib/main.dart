import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      color: Colors.red,
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Text("Oeschinen Lake Campground")
            ],
          )
        ],
      ),
    );
    return new MaterialApp(
      title: 'Flutter Layout',
      theme: new ThemeData(
        primaryColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top Lakes'),
        ),
        body: Column(
          children: <Widget>[
            titleSection
          ],
        ),
      ),
    );
  }
}