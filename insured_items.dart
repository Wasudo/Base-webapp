import 'package:flutter/material.dart';

class InsuredItemsPage extends StatefulWidget {
  InsuredItemsPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InsuredItemsPageState createState() => new _InsuredItemsPageState();
}

class _InsuredItemsPageState extends State<InsuredItemsPage> {
  int _counter = 0;

  void _somethingfuntion() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(

        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
      new Card(
      child: new Column( children: <Widget>[
      new ListTile(
            leading: const Icon(Icons.directions_car),
            title: const Text('REG12345'),
          ),
      new Text ('Sample')
      ]
      ),
      ),
    new Card(
    child: new ListTile(
            leading: const Icon(Icons.home),
            title: const Text('House'),
          )),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
      onPressed: _somethingfuntion,
      tooltip: 'Increment',
      child: new Icon(Icons.add),
    ),
    );
  }
}
