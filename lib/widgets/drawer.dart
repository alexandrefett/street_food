import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart' as sf;
import 'package:street_food/auth.dart';

class SFDrawer extends StatefulWidget {
  @override
  State<SFDrawer> createState() => SFDrawerState();
}

class SFDrawerState extends State<SFDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(elevation: 16.0,
      child: Scaffold(
        body:ListView(
        children: <Widget>[
          DrawerHeader(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.account_circle),
                    Text('Alexandre'),
                  ]
                ),
              decoration: BoxDecoration(
                  color: sf.primaryColor
              )
          ),
          Scaffold(
            body: Column(children: <Widget>[
              ListTile(
                  leading: Icon(Icons.adjust),
                  title: Text('Minha conta'),
                  subtitle: Text('Minha conta')
              ),
              ListTile(
                  leading: Icon(Icons.access_alarms),
                  title: Text('Minha conta'),
                  subtitle: Text('Minha conta')
              ),
              ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Minha conta'),
                  subtitle: Text('Minha conta')
              ),
            ]),
          bottomNavigationBar: Column(children: <Widget>[
            Divider(),
            MaterialButton(
                child: ListTile(
                    leading: Icon(Icons.transit_enterexit),
                    title: Text('Sair')),
                onPressed: ()=>authService.signOut()),

          ])),
        ],
      ),
    );
  }
}
