import 'package:crowd_insurance/insured_items.dart';
import 'package:crowd_insurance/premium.dart';
import 'package:crowd_insurance/report_claim.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Serra - Insurance on the Go',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new MyHomePage(title: 'Serra - Insurance on the Go'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return new DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: new AppBar(
            title: new Text(widget.title),
          ),
          body: TabBarView(
            children: [
              new InsuredItemsPage(),
              new PremiumPage(),
              new ReportClaimPage(),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.work), text: "Insured Items"),
              Tab(icon: Icon(Icons.monetization_on), text: "Premium"),
              Tab(icon: Icon(Icons.healing), text: "Report Claim"),
            ],
          ),


        ),

    );
  }
}