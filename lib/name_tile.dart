import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'List1.dart';
import 'lobby_list.dart';

class NameTile extends StatelessWidget {
  final List1 names;

  NameTile({this.names});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.amber[100],
          ),
          title: Text(names.name),
          subtitle: Text('Player')
        ),
      ),
    );
  }
}
