import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'List1.dart';
import 'button_tile.dart';

class ButtonList extends StatefulWidget {
  @override
  _ButtonListState createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  @override
  Widget build(BuildContext context) {
    final names = Provider.of<List<List1>>(context) ?? [];
    return NameTile2();
  }
}
