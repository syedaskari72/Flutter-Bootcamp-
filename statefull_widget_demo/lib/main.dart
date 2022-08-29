import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My App',
      home: new HomePage(),
      theme: new ThemeData(
          primarySwatch: Colors.green,
          brightness: Brightness.light,
          accentColor: Colors.blue),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello World";

  void _changeText() {
    setState(() {
      if (mytext.startsWith("H")) {
        mytext = "Welcome to my app";
      } else {
        mytext = "Hello World";
      }
    });
  }

  Widget _BodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              mytext,
              style: new TextStyle(color: Colors.yellow, fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('homepage'),
      ),
      body: _BodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}
