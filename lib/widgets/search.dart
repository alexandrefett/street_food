import 'package:flutter/material.dart';
import '../constants.dart' as sf;

class SFSearch extends StatefulWidget {
  @override
  State<SFSearch> createState() => SFSearchState();
}

class SFSearchState extends State<SFSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        FormField(),
        IconButton(icon: Icon(Icons.search),),
        IconButton(icon: Icon(Icons.content_cut),)
      ]
      )
    );
  }
}
