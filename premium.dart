import 'package:flutter/material.dart';

class PremiumPage extends StatefulWidget {
  PremiumPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PremiumPageState createState() => new _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  int _counter = 0;

  void _somethingfuntion() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Premium"),
      ),
    );
  }
}
