import 'package:flutter/material.dart';
import 'package:sps_team17/EnterName.dart';
import 'package:sps_team17/auth.dart';
import 'package:sps_team17/back-button.dart';
import 'package:sps_team17/firebase.dart';
import 'package:provider/provider.dart';
import 'package:sps_team17/info-screen.dart';
import 'User.dart';
import 'create-room.dart';
import '';


class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  final AuthService _auth = AuthService();
  final _controller2 = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  String name ;
  String gamepin ;
  String uid;




  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User2>(context);
    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
          UserData userData = snapshot.data;
        return MaterialApp(
         home: Scaffold(
            backgroundColor: Color(0xff000C2D),
            body: Stack( children: [Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[BackButtonSPS(),
                SizedBox(
                  height: 150,
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
                SizedBox(height: 40),
                Container(
                  child: Form(key: _formKey,
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                    controller: _controller2,validator: (val) => val.length < 6   ? 'Enter a 6 Pin GamePin!' : null,
                    onChanged: (val) {setState(() => gamepin=val );},
                    decoration: InputDecoration(
                      hintText: 'Enter Game Pin',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),

                        //borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                    ),
                  ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32),
                ),
                SizedBox(
                  height: 25,
                ),
            Container(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 150, vertical: 18),
                        backgroundColor: Color(0xff04E9CD),
                        primary: Colors.black),
                    child: Text("JOIN"),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        await DatabaseService(uid: user.uid).updateUserData(
                            name ?? userData.name, gamepin ?? userData.gamepin);
                        print(name);
                        print(gamepin);
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => EnterName()));
                      }
                    }),
                ),
                SizedBox(
                  height: 40,
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'If you would like to create a game pin click here',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontWeight: FontWeight.bold)),

                        ])),
                SizedBox(height: 5 ,),
                Flexible(child:Container(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 114, vertical: 18),
                        backgroundColor: Colors.pink,
                        primary: Colors.black),
                    child: Text("CREATE A GAME"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CreateRoom()));
                    },
                  ),
                ),
                ),
                SizedBox(
                  height: 80,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Center( child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 25, 25),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            child: Ink(
                              decoration: ShapeDecoration(
                                  color: Color(0xff04E9CD), shape: CircleBorder()),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.info,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => InfoScreen()),
                                    );
                                  }),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),],
                )
          ],

            )])
        ));
    });

  }
  }
