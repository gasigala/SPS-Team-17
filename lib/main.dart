import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sps_team17/auth.dart';
import './home-scren.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sps_team17/User.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {

          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {

          }

          return StreamProvider<User2>.value(
            value: AuthService().user,
            child: MaterialApp(

              title: 'FoodMates',
              home: Home(),
            ),
          );
        });
  }
}
