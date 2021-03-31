import 'package:flutter/material.dart';
import 'package:sps_team17/create-solo-session.dart';
import 'package:sps_team17/team-room-screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff000C2D), // blue background color
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 350,
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 45),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'Food',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'Mates',
                      style: TextStyle(
                          color: Color(0xff04E9CD),
                          fontWeight: FontWeight.bold))
                ])),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Ink(
                  decoration: ShapeDecoration(
                    color: Colors.pink,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                      icon: Icon(Icons.person),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                //links to create solo session
                                builder: (context) => CreateSoloSession()));
                      }),
                ),
                Ink(
                  decoration: ShapeDecoration(
                    color: Color(0xff04E9CD),
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                      icon: Icon(Icons.group),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Team()));
                      }),
                ),
              ],
            )
          ],
        ));
  }
}
