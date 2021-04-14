import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sps_team17/auth.dart';
import 'package:provider/provider.dart';
import 'package:sps_team17/button_list.dart';
import 'package:sps_team17/firebase.dart';
import 'package:sps_team17/fluttercards.dart';
import 'package:sps_team17/home-scren.dart';
import 'package:sps_team17/settings-form.dart';
import 'lobby_list.dart';
import 'List1.dart';
import 'error-screen.dart';


class HostLobby extends StatelessWidget {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(context: context, builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: SettingsForm(),
        );
      });
    }

    return StreamProvider<List<List1>>.value(
      value: DatabaseService().person,
      child: MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xff010f32),
            appBar: AppBar(
                backgroundColor: Color(0xff010f32),
                title: Text('Gamepin: 090807',style: TextStyle(fontSize: 24.0),) ,
                actions: <Widget> [
                  FlatButton.icon(
                    icon: Icon(Icons.settings,color: Colors.white),
                    label: Text('settings',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                    onPressed: () => _showSettingsPanel(),
                  )]
            ),


              body: Stack(
                children: [
                  LobbyList(),

            Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                    Center( child: Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding:
                          EdgeInsets.symmetric(horizontal: 159, vertical: 18),

                          backgroundColor: Color(0xff04E9CD),
                          primary: Colors.black),
                      child: Text("START"),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Fluttercards()));
                      },
                    ),
                  ),
                    ),],
                  )
                ],
              )






      ),
    ));
  }}
