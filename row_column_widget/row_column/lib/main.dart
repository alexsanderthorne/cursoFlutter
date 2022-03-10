import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('row and column'),
        ),
        body: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('This'),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('this'),
                  new Text('is'),
                  new Text('column')
                ],
              ),
            ]),
      ),
    );
  }
}
