import 'package:flutter/material.dart';
import 'auth.dart';
import 'package:provider/provider.dart';
import 'User.dart';
import 'firebase.dart';
import '/GameLobby/lobby-screen.dart';
import '/Main/back-button.dart';

class EnterName extends StatefulWidget {
  @override
  _EnterNameState createState() => _EnterNameState();
}

class _EnterNameState extends State<EnterName> {
  final AuthService _auth = AuthService();
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String name ;
  String gamepin;
  int p = 0;

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
              body: Stack( children: [ BackButtonSPS(), Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 240,),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 45),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Your',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: 'Name',
                            style: TextStyle(color: Color(0xff04E9CD), fontWeight: FontWeight.bold))
                      ])),
                    SizedBox(height: 30),
                    Container(
                      child: Form(key: _formKey,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                          controller: _controller,validator: (val) => val.isEmpty ? 'Enter a Name!' : null,
                          onChanged: (val) {setState(() => name=val );},
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                          ),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 32),
                    ),
                    SizedBox(height: 30,),
                    Flexible(
                      child: Container(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 150, vertical: 18),
                            backgroundColor: Color(0xff04E9CD),
                            primary: Colors.black),
                        child: Text("JOIN"), onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            await DatabaseService(uid: user.uid).updateUserData(
                              name ?? userData.name, gamepin ?? userData.gamepin);
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context) => JoinLobby()));
                          }
                        }
                        ),
                      ),
                    ),
                    SizedBox(height: 32,),
                  ],
                )])));
      }
    );
    }
}
