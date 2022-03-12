import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  List<int> items = new List();

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'teste lista de widgets',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('List Widget'),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext, int index) {
              return new ListTile(
                title: new Text('item no: $index'),
                trailing: new Icon(Icons.arrow_forward),
              );
            }),
      ),
    );
  }
}
