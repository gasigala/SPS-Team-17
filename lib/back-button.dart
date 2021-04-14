import 'package:flutter/material.dart';

class BackButtonSPS extends StatefulWidget {
  @override
  _BackButtonSPSState createState() => _BackButtonSPSState();
}

class _BackButtonSPSState extends State<BackButtonSPS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Text(''),
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white.withOpacity(0.0),
        elevation: 0.0, // no shadow
      ),
    );
  }
}
