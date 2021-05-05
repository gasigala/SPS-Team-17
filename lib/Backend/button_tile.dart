import 'package:flutter/material.dart';
import '../HomeScreen/home-scren.dart';
import 'List1.dart';

class NameTile2 extends StatelessWidget {
  final List1 names;
  NameTile2({this.names});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: TextButton(
        style: TextButton.styleFrom(
          padding:
          EdgeInsets.symmetric(horizontal: 159, vertical: 18),
          backgroundColor: Color(0xff04E9CD),
          primary: Colors.black),
        child: Text("START"),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Home()));
        },
      ),
    );
  }
}
