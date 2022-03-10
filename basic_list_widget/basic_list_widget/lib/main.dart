import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'teste lista',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('List Widget'),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('data 1'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('data 2'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('data 3'),
              trailing: new Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
