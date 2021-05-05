import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Backend/auth.dart';
import '../HomeScreen/home-scren.dart';
import 'package:firebase_core/firebase_core.dart';
import '../Backend/User.dart';

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
       }
    );
  }
}
