import 'package:flutter/material.dart';

class ReportClaimPage extends StatefulWidget {
  ReportClaimPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ReportClaimPageState createState() => new _ReportClaimPageState();
}

class _ReportClaimPageState extends State<ReportClaimPage> {
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
        child: new Text("Report Claims"),
      ),
    );
  }
}
