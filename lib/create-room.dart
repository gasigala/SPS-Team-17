import 'package:flutter/material.dart';
import 'package:sps_team17/host-lobby-screen.dart';
import 'package:sps_team17/auth.dart';
import 'package:provider/provider.dart';
import 'package:sps_team17/User.dart';
import 'package:sps_team17/firebase.dart';
import './screen-slider.dart';
import './price-buttonbar.dart';
import './dropdown-category.dart';
import 'dart:math';

import 'create-solo-session.dart';

class CreateRoom extends StatefulWidget {
  @override
  _CreateRoomState createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  final AuthService _auth = AuthService();
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String name;

  String gamepin;


  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User2>(context);
    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
          UserData userData = snapshot.data;
          return MaterialApp(
            home: Scaffold(
              backgroundColor: Color(0xff010F32),
              body: SafeArea(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Create Room',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                        ),
                        //this will be the enter your name part of the form
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(key: _formKey,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                              controller: _controller,
                              validator: (val) =>
                              val.isEmpty
                                  ? 'Enter a Name!'
                                  : null,
                              onChanged: (val) {
                                setState(() => name = val);
                              },
                              decoration: InputDecoration(
                                hintText: 'Enter your Name',
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        const Divider(
                          height: 20,
                          color: Colors.white,
                          thickness: 2,
                        ),
                        //this is the slider part of the solo run screen
                        ScreenSlider(),
                        const Divider(
                          height: 20,
                          color: Colors.white,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Select Price Range",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        PriceButtonBar(),
                        const Divider(
                          height: 20,
                          color: Colors.white,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Select Category',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        DropDownCategory(),
                        const Divider(
                          height: 20,
                          color: Colors.white,
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Flexible(child: Container(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  padding:
                                  EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 18),
                                  backgroundColor: Color(0xff04E9CD),
                                  primary: Colors.black),
                              child: Text("CREATE GAME"),
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  await DatabaseService(uid: user.uid)
                                      .updateUserData(
                                      name ?? userData.name,
                                      gamepin ?? userData.gamepin);
                                  print(name);
                                  print(gamepin);
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => HostLobby()));
                                }
                              }
                          ),

                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }


}
