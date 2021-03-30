import 'package:flutter/material.dart';

import './create-solo-session.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: ElevatedButton(
              child: Text('Solo Room'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CreateSoloSession()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
