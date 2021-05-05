import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Backend/List1.dart';
import '../Backend/name_tile.dart';

class LobbyList extends StatefulWidget {
  @override
  _LobbyListState createState() => _LobbyListState();
}

class _LobbyListState extends State<LobbyList> {
  @override
  Widget build(BuildContext context) {
    final names = Provider.of<List<List1>>(context) ?? [];
      return ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return NameTile(names: names[index]);
        },
      );
  }
}