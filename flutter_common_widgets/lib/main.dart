import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_fade_test.dart';
import 'async_awit_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext contxet) => MyHomePage(title: 'Flutter Demo~'),
        '/b': (BuildContext context) => SampleAppPage1(title: 'Async_Awit')
      },
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      // home: MyHomePage(
      //   title: 'Flutter Demmmo',
      // ),
      home: SampleAppPage(),
      // home: MyFadeTest(title: 'Fade Demo',),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SampleAppPageState();
  }
}

class _SampleAppPageState extends State<SampleAppPage> {
  String textToShow = 'I link flutter';
  bool toggle = true;

  void _toggle() {
    Navigator.of(context).pushNamed('/a');
    // setState(() {
    //   toggle = !toggle;
    // });
  }

  _getToggleChild() {
    if (toggle) {
      return Text('Toggle One');
    } else {
      return CupertinoButton(
        onPressed: () {},
        child: Text('Toggle Two'),
      );
    }
  }

  void _updateText() {
    setState(() {
      textToShow = 'Flutter is Awesome!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      // body: Center(
      //   child: Text(textToShow),
      // ),
      body: _getToggleChild(),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update',
        child: Icon(Icons.update),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

List<Container> _buildGridTileList(int count) {
  return new List<Container>.generate(
    count,
    (int index) =>
        new Container(child: new Image.asset('images/pic${index + 1}.png')),
  );
}

Widget buildGrid() {
  return new GridView.extent(
    maxCrossAxisExtent: 200.0,
    padding: const EdgeInsets.all(10.0),
    mainAxisSpacing: 10.0,
    crossAxisSpacing: 10.0,
    children: _buildGridTileList(4),
  );
}

List<Widget> list = <Widget>[
  new ListTile(
    title: new Text(
      'CineArts at the Empire1',
      style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
    ),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text(
      'CineArts at the Empire2',
      style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
    ),
    subtitle: new Text('85 W Portal Ave'),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text(
      'CineArts at the Empire3',
      style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
    ),
    subtitle: new Text('85 W Portal Ave2'),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  )
];

class _MyHomePageState extends State<MyHomePage> {
  floationAciton() {
    Navigator.of(context).pushNamed('/b');
  }

  @override
  Widget build(BuildContext context) {
    var containerDemo = new Container(
      decoration: new BoxDecoration(
        color: Colors.black26,
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(10.0),
            child: new Text(
              'ContainDemo',
              style: new TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18.0,
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(width: 10, color: Colors.black38),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: new Image.asset('images/pic1.png'),
                ),
              ),
              new Expanded(
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(width: 10, color: Colors.black38),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: new Image.asset('images/pic2.png'),
                ),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(width: 10, color: Colors.black38),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: new Image.asset('images/pic3.png'),
                ),
              ),
              new Expanded(
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(width: 10, color: Colors.black38),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: new Image.asset('images/pic4.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
    var gridDemo = new Container();
    var stack = new Stack(
      alignment: const Alignment(0.6, 0.6),
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(color: Colors.black45),
          child: new Text('Mia B',
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        new CircleAvatar(
          backgroundImage: new AssetImage('images/pic1.png'),
          radius: 100.0,
        ),
      ],
    );
    var card = new SizedBox(
      width: 300,
      height: 210.0,
      child: new Card(
        child: new Column(
          children: <Widget>[
            new ListTile(
              title: new Text(
                '1625 Main Street',
                style: new TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: new Text('My City, Ca 0222'),
              leading: new Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            new Divider(),
            new ListTile(
              title: new Text(
                '(400) 555-1212',
                style: new TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: new Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            new ListTile(
              title: new Text('consta@example.com'),
              leading: new Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: containerDemo,
      // body: buildGrid(),
      // body: new ListView(children: list),
      // body: stack,
      body: card,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.airline_seat_legroom_extra),
        onPressed: floationAciton,
      ),
    );
  }
}
