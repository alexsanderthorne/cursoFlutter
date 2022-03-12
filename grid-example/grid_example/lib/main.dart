import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  List<int> items = new List();

  @override
  void initState() {
    for (int i = 0; i < 10; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.builder(
          itemCount: items.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          // ignore: non_constant_identifier_names
          itemBuilder: (BuildContext, int index) {
            return new Card(
              color: Colors.deepPurple,
              child: new Padding(padding: const EdgeInsets.all(40.0)),
            );
          }),
    );
  }
}
