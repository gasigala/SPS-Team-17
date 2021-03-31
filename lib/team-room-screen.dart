import 'package:flutter/material.dart';

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  final _controller = TextEditingController();
  String name = "";
  String gameKey = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff000C2D),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 45),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'Team',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'Room',
                      style: TextStyle(
                          color: Color(0xff04E9CD),
                          fontWeight: FontWeight.bold))
                ])),
            SizedBox(height: 30),
            Container(
              child: TextField(
                textAlign: TextAlign.center,
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    //borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 32),
            ),
            Container(
              child: TextField(
                textAlign: TextAlign.center,
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Game Pin',
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    //borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 32),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: TextButton(
                style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 159, vertical: 18),
                    backgroundColor: Color(0xff04E9CD),
                    primary: Colors.black),
                child: Text("JOIN"),
                onPressed: () {
                  setState(() {
                    name = _controller.text;
                  });
                },
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: TextButton(
                style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 159, vertical: 18),
                    backgroundColor: Colors.pink,
                    primary: Colors.black),
                child: Text("HOST"),
                onPressed: () {},
              ),
            )
          ],
        ));
  }
}
