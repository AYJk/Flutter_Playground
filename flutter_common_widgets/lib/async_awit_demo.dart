import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SampleAppPage1 extends StatefulWidget {
  final String title;
  SampleAppPage1({Key key, this.title}) : super(key: key);

  _SampleAppPage1State createState() => _SampleAppPage1State();
}

class _SampleAppPage1State extends State<SampleAppPage1> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    String dataURL = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = json.decode(response.body);
    });
  }

  Widget getRow(int i) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text('Row ${widgets[i]["title"]}'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (BuildContext context, int position) {
        return getRow(position);
      },
    ),
    );
  }
}
