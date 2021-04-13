import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './back-button.dart';

class HostLobby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff010f32),
        body: Stack(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 130,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 45),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Gamepin:',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: ' 213434',
                            style: TextStyle(
                                color: Color(0xff04E9CD),
                                fontWeight: FontWeight.bold))
                      ])),
                  SizedBox(height: 20),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 35),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Lobby',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ])),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[300]))),
                          child: Center(
                            child: Text(
                              "Jannet",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[300]))),
                          child: Center(
                            child: Text(
                              "Jannet",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[300]))),
                          child: Center(
                            child: Text(
                              "Jannet",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[300]))),
                          child: Center(
                            child: Text(
                              "Jannet",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        ///////////////////////////////////////////
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[300]))),
                          child: Center(
                            child: Text(
                              "Jannet",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey[300]))),
                          child: Center(
                            child: Text(
                              "Jannet",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(),
                          child: Center(
                            child: Text(
                              "Jannet",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Container(
                        width: 120,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue[800]),
                        child: Center(
                          child: Text(
                            "Create",
                            style:
                                TextStyle(color: Colors.white.withOpacity(.7)),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            BackButtonSPS(),
          ],
        ));
  }
}
