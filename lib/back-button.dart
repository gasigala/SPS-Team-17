import 'package:flutter/material.dart';

class BackButtonSPS extends StatefulWidget {
  @override
  _BackButtonSPSState createState() => _BackButtonSPSState();
}

class _BackButtonSPSState extends State<BackButtonSPS> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
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
