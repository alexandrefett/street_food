import 'dart:async';
import 'package:flutter/material.dart';
import 'package:street_food/auth.dart';
import 'package:street_food/pages/enterpage.dart';
import 'pages/mainpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Street Food'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Map<String, dynamic> _profile;
  bool _loading =  false;

  @override
  void initState() {
    super.initState();
    authService.profile
        .listen((onData) => setState(() => _profile = onData));

    authService.loading
        .listen((onData) => setState(() => _loading = onData));

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      title: 'StreetFood',
      home: StreamBuilder(
          stream: authService.user,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(_profile);
              return MainPage();
            } else {
              return EnterPage();
            }
          }
      )
    );
  }
}
